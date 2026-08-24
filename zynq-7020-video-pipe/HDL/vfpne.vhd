LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

--LIBRARY lifcl;
--USE lifcl.components.all;

entity vfpne is
port 
    (
	 --Reset Input
	 arst_n         : in std_logic;
	 --Parallel Input
	 p_clk_in       : in std_logic;
	 p_data_in      : in std_logic_vector(9 downto 0);
	 p_de_in        : in std_logic;
	 p_vsync_in     : in std_logic;
	 compute        : in std_logic;
	 --Parallel Output
	 p_clk_out       : out std_logic;
	 p_data_out      : out std_logic_vector(9 downto 0);
	 p_de_out        : out std_logic;
	 p_vsync_out     : out std_logic;
	 done            : out std_logic;
	 --For Test
	 output_select   : in std_logic_vector(1 downto 0);
	 skip_count      : in std_logic_vector(3 downto 0);
	 lram_dps        : in std_logic_vector(1 downto 0)
	);
end entity vfpne;

architecture behavioural of vfpne is

component LRAM_DP is
    port(
        clk_i          : in std_logic;
        dps_i          : in std_logic;
        rst_i          : in std_logic;
        wr_clk_en_i    : in std_logic;
		rd_clk_en_i    : in std_logic;
        wr_en_i        : in std_logic;
        wr_data_i      : in std_logic_vector(19 downto 0);
        wr_addr_i      : in std_logic_vector(16 downto 0);
		rd_addr_i      : in std_logic_vector(16 downto 0);
        rd_data_o      : out std_logic_vector(19 downto 0);
        lramready_o    : out std_logic;
        rd_datavalid_o : out std_logic
    );
end component;

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
  );
END COMPONENT;

signal frame_min : std_logic_vector(9 downto 0);

signal line_cnt : integer range 0 to 399;

signal pix_cnt : std_logic_vector(16 downto 0);
signal pix_cnt_clr : std_logic;
signal pix_cnt_en  : std_logic;

signal pix_toggle : std_logic;

signal vsync_fedge : std_logic;  --eof
signal vsync_redge : std_logic;  --sof
signal href_fedge : std_logic;

signal compute_redge : std_logic;  --soc

signal vsync_d  : std_logic;
signal href_d : std_logic;
signal data_d : std_logic_vector(9 downto 0);

signal vsync_d2  : std_logic;
signal href_d2 : std_logic;
signal data_d2 : std_logic_vector(9 downto 0);

signal compute_d : std_logic;

signal frame_min_compute_clr : std_logic;
signal frame_min_compute_en  : std_logic;

signal ram1_wr_ck_en  : std_logic;
signal ram1_rd_ck_en  : std_logic;
signal ram1_wr_en  : std_logic;
signal ram1_wr_addr   : std_logic_vector(16 downto 0);
signal ram1_rd_addr   : std_logic_vector(16 downto 0);
signal ram1_wdata  : std_logic_vector(19 downto 0);
signal ram1_rdata  : std_logic_vector(19 downto 0);
signal ram1_rvalid : std_logic;
signal ram1_ready  : std_logic;

type state is (idle, wait_for_ramready, wait_for_sof0, wr_zero, wait_for_sof1, wr_pattern, wait_for_sof2, rd_mod_wr, compute_done);
signal c_state : state;

signal zero_wr : std_logic; --write zero to ram
signal input_wr : std_logic; --saving input pattern to ram
signal pattern_wr : std_logic; --saving computed pattern to ram

signal pix_cnt_2 : std_logic_vector(16 downto 0);
signal pix_toggle_2 : std_logic;

signal done_int : std_logic;

signal data_out_temp1 : std_logic_vector(10 downto 0);
signal data_out_temp2 : std_logic_vector(9 downto 0);
signal data_out_temp3 : std_logic_vector(9 downto 0);
signal input_wr_count : std_logic_vector(3 downto 0);

begin

--1 RAM Instance holding 400 rows

--LRAM_INST1 : LRAM_DP port map(
--                             clk_i           => p_clk_in,
--                             dps_i           => lram_dps(0),
--                             rst_i           => lram_dps(1),
--                             wr_clk_en_i     => ram1_wr_ck_en,
--							 rd_clk_en_i     => ram1_rd_ck_en,
--                             wr_en_i         => ram1_wr_en,
--                             wr_data_i       => ram1_wdata,
--                             wr_addr_i       => ram1_wr_addr,
--							 rd_addr_i       => ram1_rd_addr,
--                             rd_data_o       => ram1_rdata,
--                             lramready_o     => ram1_ready,--openn,
--                             rd_datavalid_o  => ram1_rvalid
--                            );

LRAM_INST1 : blk_mem_gen_0
  PORT MAP (
    clka => p_clk_in,
    ena => ram1_wr_ck_en,
    wea(0) => ram1_wr_en,
    addra => ram1_wr_addr,
    dina => ram1_wdata,
    clkb => p_clk_in,
    enb => ram1_rd_ck_en,
    addrb => ram1_rd_addr,
    doutb => ram1_rdata
  );

ram1_wr_ck_en <= pix_toggle when (zero_wr = '1' or input_wr = '1' or pattern_wr = '1') else                   --Enable Write
                 '0';                                                                        --Disable Write

ram1_wdata <= (x"00000") when (zero_wr = '1') else                                           --Cycle 0 Clear Ram by writing zero
              (p_data_in & data_d) when (input_wr = '1') else                                --Cycle 1 Input As Is
              ((p_data_in & data_d) - (frame_min & frame_min)) when (pattern_wr = '1') else   --Cycle 2 Input - Min
			  --(p_data_in & data_d) when (pattern_wr = '1') else   --Cycle 2 Input - Min
			  (others => '0');                                                               --Null

ram1_wr_addr <= pix_cnt when (zero_wr = '1' or input_wr = '1' or pattern_wr = '1') else                       --during input / pattern write
                (others => '0');                                                             --Null                                      

ram1_wr_en <= p_de_in when (zero_wr = '1' or input_wr = '1' or pattern_wr = '1') else                         --during input / pattern write
              '0';                                                                           --Null


ram1_rd_ck_en <= p_de_in when (done_int = '1') else '0';

ram1_rd_addr <= pix_cnt_2 when (done_int = '1') else (others => '0');

ram1_rvalid <= href_d2 and done_int;

--Logic for line count, pixel count 
DELAY : process(p_clk_in,arst_n)
   begin
      if(arst_n = '0') then
	     vsync_d <= '0';
		 href_d  <= '0';
		 vsync_d2 <= '0';
		 href_d2  <= '0';
		 compute_d <= '0';
		 data_d <= (others => '0');
		 data_d2 <= (others => '0');
	  elsif(rising_edge(p_clk_in)) then
	     vsync_d <= p_vsync_in;
		 vsync_d2 <= vsync_d;
		 href_d  <= p_de_in;
		 href_d2  <= href_d;
		 compute_d <= compute;
		 data_d <= p_data_in;
		 data_d2 <= data_d;
	  end if;
   end process;
   
vsync_fedge <= not p_vsync_in and vsync_d;  --eof
vsync_redge <= p_vsync_in and not vsync_d;  --sof
href_fedge <= not p_de_in and href_d;
compute_redge <= compute and not compute_d; --soc

LINE_COUNT : process(p_clk_in,arst_n)
   begin
      if(arst_n = '0') then
	     line_cnt <= 0;
	  elsif(rising_edge(p_clk_in)) then
	     if(href_fedge = '1') then
		    if(line_cnt = 399) then
			   line_cnt <= 0;
			else 
			   line_cnt <= line_cnt + 1;
			end if;
	      else
		     line_cnt <= line_cnt;
		  end if;
	  end if;
   end process;
   
PIXEL_TOGGLE : process(p_clk_in, arst_n)
   begin
      if(arst_n = '0') then
	     pix_toggle <= '0';
	  elsif(rising_edge(p_clk_in)) then
		if(pix_cnt_clr = '1') then           
		    pix_toggle <= '0';
	    elsif(p_de_in = '1' and p_vsync_in = '1') then
		    pix_toggle <= not pix_toggle;
	    else
		    pix_toggle <= pix_toggle;
	     end if;
      end if;
   end process;
   
PIXEL_COUNT : process(p_clk_in,arst_n)
   begin
      if(arst_n = '0') then
	     pix_cnt <= (others => '0');
	  elsif(rising_edge(p_clk_in)) then
	     if(pix_cnt_clr = '1') then
		    pix_cnt <= (others => '0');
		 elsif(pix_cnt_en = '1') then 
			 if(pix_toggle = '1') then               				 
				 pix_cnt <= pix_cnt + '1';			
			 else
				 pix_cnt <= pix_cnt;
			 end if;
		  end if;
	  end if;
   end process;
   
PIXEL_TOGGLE2 : process(p_clk_in, arst_n)
   begin
      if(arst_n = '0') then
	     pix_toggle_2 <= '0';
	  elsif(rising_edge(p_clk_in)) then
	     if(ram1_rvalid = '1') then
		    pix_toggle_2 <= not pix_toggle_2;
	     else
		    pix_toggle_2 <= pix_toggle_2;
	     end if;
      end if;
   end process;
   
PIXEL_COUNT2 : process(p_clk_in,arst_n)
   begin
      if(arst_n = '0') then
	     pix_cnt_2 <= (others => '0');
	  elsif(rising_edge(p_clk_in)) then
	     if(vsync_redge = '1') then
		    pix_cnt_2 <= (others => '0');
		 elsif(p_de_in = '1') then 
			 if(pix_toggle = '1') then               				 
				 pix_cnt_2 <= pix_cnt_2 + '1';			
			 else
				 pix_cnt_2 <= pix_cnt_2;
			 end if;
		  end if;
	  end if;
   end process;
   
FRAME_MINIMA : process(p_clk_in,arst_n)
   begin
      if(arst_n = '0') then
	     frame_min <= (others=>'1');
	  elsif(rising_edge(p_clk_in)) then
	     if(frame_min_compute_clr = '1') then                      --Set by main state machine
		    frame_min <= (others=>'1');              
	     elsif(frame_min_compute_en = '1') then                       --Set by main state machine
		    if(p_de_in = '1') then
			   if(frame_min > p_data_in) then
			      frame_min <= p_data_in;
			   else
			      frame_min <= frame_min;
			   end if;
			else
			   frame_min <= frame_min;
			end if;
		 end if;
      end if;
   end process;
   
-- State Machine
SM : process(p_clk_in,arst_n)
   begin
      if(arst_n = '0') then
	     c_state <= idle;
		 frame_min_compute_clr <= '0';
		 frame_min_compute_en <= '0';
		 pix_cnt_clr <= '0';
		 pix_cnt_en <= '0';
		 input_wr <= '0';
		 zero_wr <= '0';
		 pattern_wr <= '0';
		 done_int <= '0';
		 input_wr_count <= (others => '0');
	  elsif(rising_edge(p_clk_in)) then
	     case c_state is 
		    when idle => 
			   if(compute_redge = '1') then
			      c_state <= wait_for_sof0;--wait_for_ramready;
				  frame_min_compute_clr <= '1';
				  pix_cnt_clr <= '1';
				  done_int <= '0';
			   else
			      c_state <= idle;
				  frame_min_compute_clr <= '0';
				  pix_cnt_clr <= '0';
				  done_int <= done_int;  --Stay in reset value at power up and last value there after
			   end if;

			when wait_for_ramready => 
			   if(ram1_ready = '1') then
			      c_state <= wait_for_sof0;
				  --frame_min_compute_clr <= '1';
				  --pix_cnt_clr <= '1';
				  --done_int <= '0';
			   else
			      c_state <= wait_for_ramready;
				  --frame_min_compute_clr <= '0';
				  --pix_cnt_clr <= '0';
				  --done_int <= done_int;  --Stay in reset value at power up and last value there after
			   end if;		
			   
			when wait_for_sof0 => 
			   frame_min_compute_clr <= '1';
			   pix_cnt_clr <= '1';
			   
			   if(vsync_redge = '1') then
			      c_state <= wr_zero;
			      frame_min_compute_en <= '0';
				  pix_cnt_en <= '0';
			   else
			      c_state <= wait_for_sof0;
				  frame_min_compute_en <= '0';
				  pix_cnt_en <= '0';
			   end if;
				  		
			when wr_zero => 
			   
			   if(vsync_fedge = '1') then
			      c_state <= wait_for_sof1;
				  frame_min_compute_en <= '0';
				  pix_cnt_en <= '0';
				  pix_cnt_clr <= '1';
				  zero_wr <= '0';
			   else
			      c_state <= wr_zero;
				  frame_min_compute_en <= '0';
				  pix_cnt_en <= '1';
				  pix_cnt_clr <= '0';
				  zero_wr <= '1';
			   end if;
			 		
			when wait_for_sof1 => 
			   frame_min_compute_clr <= '0';
			   pix_cnt_clr <= '0';
			   
			   if(vsync_redge = '1') then
			      c_state <= wr_pattern;
			      frame_min_compute_en <= '1';
				  pix_cnt_en <= '1';
			   else
			      c_state <= wait_for_sof1;
				  frame_min_compute_en <= '0';
				  pix_cnt_en <= '0';
			   end if;
				  		
			when wr_pattern => 
			   
			   if(vsync_fedge = '1') then
			      if(input_wr_count = skip_count) then
					c_state <= wait_for_sof2;
				  else
				     c_state <= wait_for_sof0;
				  end if;
				  frame_min_compute_en <= '0';
				  pix_cnt_en <= '0';
				  pix_cnt_clr <= '1';
				  input_wr <= '0';
				  input_wr_count <= input_wr_count + '1';
			   else
			      c_state <= wr_pattern;
				  frame_min_compute_en <= '1';
				  pix_cnt_en <= '1';
				  pix_cnt_clr <= '0';
				  input_wr <= '1';
				  input_wr_count <= input_wr_count;
			   end if;
					   			
			when wait_for_sof2 => null;
			   pix_cnt_clr <= '0';
			   
			   if(vsync_redge = '1') then
			      c_state <= rd_mod_wr;			      
				  pix_cnt_en <= '1';
			   else
			      c_state <= wait_for_sof2;				  
				  pix_cnt_en <= '0';
			   end if;
			
			when rd_mod_wr =>			   
			   if(vsync_fedge = '1') then
			      c_state <= compute_done;
				  pix_cnt_clr <= '1';
				  pix_cnt_en <= '0';
				  pattern_wr <= '0';
			   else
			      c_state <= rd_mod_wr;
				  pix_cnt_clr <= '0';
				  pattern_wr <= '1';
				  pix_cnt_en <= '1';
			   end if;	
			   			
			when compute_done => 
			   pix_cnt_clr <= '0';
			   done_int <= '1';
			   c_state <= idle;
			
		 end case;
	  end if;
   end process;
   
--Out Port Assignment
p_clk_out <= p_clk_in;
data_out_temp1 <=   (('0' & data_d2) - ('0' & ram1_rdata(9 downto 0))) when ((pix_toggle_2 = '0' and ram1_rvalid = '1') and (data_d2 < "1111111111")) else
                    (('0' & data_d2) - ('0' & ram1_rdata(19 downto 10))) when ((pix_toggle_2 = '1' and ram1_rvalid = '1') and (data_d2 < "1111111111")) else
			        ('0' & data_d2);--(others => '0');
					
data_out_temp3 <=   ((ram1_rdata(9 downto 0))) when ((pix_toggle_2 = '0' and ram1_rvalid = '1') ) else
                    ((ram1_rdata(19 downto 10))) when ((pix_toggle_2 = '1' and ram1_rvalid = '1') ) else
			        (data_d2);--(others => '0');					
			  
data_out_temp2 <= data_out_temp1(9 downto 0) when (data_out_temp1(10) = '0') else "0000000000";

p_data_out <= data_out_temp3 when (output_select = "01") else
              data_d2 when (output_select = "10") else 
              data_out_temp2 when (done_int = '1') else data_d2;

p_de_out <= (ram1_rvalid and href_d2) when (done_int = '1') else href_d2;
p_vsync_out <= vsync_d2;
   
done <= done_int;
	     

end architecture behavioural;