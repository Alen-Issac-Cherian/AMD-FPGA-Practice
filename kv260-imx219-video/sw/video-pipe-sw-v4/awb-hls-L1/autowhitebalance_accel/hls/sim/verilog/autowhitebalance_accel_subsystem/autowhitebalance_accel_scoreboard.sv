//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef AUTOWHITEBALANCE_ACCEL_SCOREBOARD__SV                                                       
    `define AUTOWHITEBALANCE_ACCEL_SCOREBOARD__SV                                                   
                                                                                               
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TDATA_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_data_V.dat"
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TKEEP_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_keep_V.dat"
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TSTRB_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_strb_V.dat"
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TUSER_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_user_V.dat"
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TLAST_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_last_V.dat"
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TID_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_id_V.dat"
    `define AUTOTB_TVOUT_m_axis_video_m_axis_video_TDEST_wrapc  "../tv/rtldatafile/rtl.autowhitebalance_accel.autotvout_m_axis_video_V_dest_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TDATA  "../tv/stream_size/stream_size_out_m_axis_video_V_data_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TKEEP  "../tv/stream_size/stream_size_out_m_axis_video_V_keep_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TSTRB  "../tv/stream_size/stream_size_out_m_axis_video_V_strb_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TUSER  "../tv/stream_size/stream_size_out_m_axis_video_V_user_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TLAST  "../tv/stream_size/stream_size_out_m_axis_video_V_last_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TID  "../tv/stream_size/stream_size_out_m_axis_video_V_id_V.dat"
    `define STREAM_SIZE_OUT_m_axis_video_m_axis_video_TDEST  "../tv/stream_size/stream_size_out_m_axis_video_V_dest_V.dat"
                                                                                               
    class autowhitebalance_accel_scoreboard extends uvm_component;                                        
                                                                                               
        autowhitebalance_accel_reference_model refm;                                                      
                                                                                               
        typedef integer TRANS_SIZE_QUEUE_TYPE [$];                                      
        TRANS_SIZE_QUEUE_TYPE TVOUT_transaction_size_queue;                                
        int write_file_done_m_axis_video_m_axis_video_TDATA;                                                          
        int write_file_done_m_axis_video_m_axis_video_TKEEP;                                                          
        int write_file_done_m_axis_video_m_axis_video_TSTRB;                                                          
        int write_file_done_m_axis_video_m_axis_video_TUSER;                                                          
        int write_file_done_m_axis_video_m_axis_video_TLAST;                                                          
        int write_file_done_m_axis_video_m_axis_video_TID;                                                          
        int write_file_done_m_axis_video_m_axis_video_TDEST;                                                          
        int write_section_done_m_axis_video_m_axis_video_TDATA = 0;                                                   
        int write_section_done_m_axis_video_m_axis_video_TKEEP = 0;                                                   
        int write_section_done_m_axis_video_m_axis_video_TSTRB = 0;                                                   
        int write_section_done_m_axis_video_m_axis_video_TUSER = 0;                                                   
        int write_section_done_m_axis_video_m_axis_video_TLAST = 0;                                                   
        int write_section_done_m_axis_video_m_axis_video_TID = 0;                                                   
        int write_section_done_m_axis_video_m_axis_video_TDEST = 0;                                                   
                                                                                           
        file_agent_pkg::file_read_agent#(32) file_rd_TVOUT_transaction_size;               
                                                                                           
        file_agent_pkg::file_write_agent#(32) file_wr_port_m_axis_video_m_axis_video_TDATA;
        file_agent_pkg::file_write_agent#(4) file_wr_port_m_axis_video_m_axis_video_TKEEP;
        file_agent_pkg::file_write_agent#(4) file_wr_port_m_axis_video_m_axis_video_TSTRB;
        file_agent_pkg::file_write_agent#(1) file_wr_port_m_axis_video_m_axis_video_TUSER;
        file_agent_pkg::file_write_agent#(1) file_wr_port_m_axis_video_m_axis_video_TLAST;
        file_agent_pkg::file_write_agent#(1) file_wr_port_m_axis_video_m_axis_video_TID;
        file_agent_pkg::file_write_agent#(1) file_wr_port_m_axis_video_m_axis_video_TDEST;
                                                                                               
        `uvm_component_utils_begin(autowhitebalance_accel_scoreboard)                                     
        `uvm_field_object(refm  , UVM_DEFAULT)                                                 
        `uvm_field_object(file_rd_TVOUT_transaction_size, UVM_DEFAULT)
        `uvm_field_queue_int(TVOUT_transaction_size_queue, UVM_DEFAULT)                    
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TDATA, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TDATA, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TDATA, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TKEEP, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TKEEP, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TKEEP, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TSTRB, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TSTRB, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TSTRB, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TUSER, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TUSER, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TUSER, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TLAST, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TLAST, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TLAST, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TID, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TID, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TID, UVM_DEFAULT)
        `uvm_field_object(file_wr_port_m_axis_video_m_axis_video_TDEST, UVM_DEFAULT)
        `uvm_field_int(write_file_done_m_axis_video_m_axis_video_TDEST, UVM_DEFAULT)
        `uvm_field_int(write_section_done_m_axis_video_m_axis_video_TDEST, UVM_DEFAULT)
        `uvm_component_utils_end                                                               
                                                                                               
        virtual function void build_phase(uvm_phase phase);                                    
            if (!uvm_config_db #(autowhitebalance_accel_reference_model)::get(this, "", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No refm from high level")                  
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM) 
            file_rd_TVOUT_transaction_size = file_agent_pkg::file_read_agent#(32)::type_id::create("file_rd_TVOUT_transaction_size", this);
                                                                                               
            file_wr_port_m_axis_video_m_axis_video_TDATA = file_agent_pkg::file_write_agent#(32)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TDATA", this);
            file_wr_port_m_axis_video_m_axis_video_TKEEP = file_agent_pkg::file_write_agent#(4)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TKEEP", this);
            file_wr_port_m_axis_video_m_axis_video_TSTRB = file_agent_pkg::file_write_agent#(4)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TSTRB", this);
            file_wr_port_m_axis_video_m_axis_video_TUSER = file_agent_pkg::file_write_agent#(1)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TUSER", this);
            file_wr_port_m_axis_video_m_axis_video_TLAST = file_agent_pkg::file_write_agent#(1)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TLAST", this);
            file_wr_port_m_axis_video_m_axis_video_TID = file_agent_pkg::file_write_agent#(1)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TID", this);
            file_wr_port_m_axis_video_m_axis_video_TDEST = file_agent_pkg::file_write_agent#(1)::type_id::create("file_wr_port_m_axis_video_m_axis_video_TDEST", this);
        endfunction                                                                            
                                                                                               
        function new (string name = "", uvm_component parent = null);                        
            super.new(name, parent);                                                           
            write_file_done_m_axis_video_m_axis_video_TDATA = 0;                                                          
            write_file_done_m_axis_video_m_axis_video_TKEEP = 0;                                                          
            write_file_done_m_axis_video_m_axis_video_TSTRB = 0;                                                          
            write_file_done_m_axis_video_m_axis_video_TUSER = 0;                                                          
            write_file_done_m_axis_video_m_axis_video_TLAST = 0;                                                          
            write_file_done_m_axis_video_m_axis_video_TID = 0;                                                          
            write_file_done_m_axis_video_m_axis_video_TDEST = 0;                                                          
        endfunction                                                                            
                                                                                               
        virtual task run_phase(uvm_phase phase);                                               
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TDATA);
            file_wr_port_m_axis_video_m_axis_video_TDATA.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TDATA_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TKEEP);
            file_wr_port_m_axis_video_m_axis_video_TKEEP.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TKEEP_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TSTRB);
            file_wr_port_m_axis_video_m_axis_video_TSTRB.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TSTRB_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TUSER);
            file_wr_port_m_axis_video_m_axis_video_TUSER.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TUSER_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TLAST);
            file_wr_port_m_axis_video_m_axis_video_TLAST.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TLAST_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TID);
            file_wr_port_m_axis_video_m_axis_video_TID.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TID_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            
            create_TVOUT_transaction_size_queue_by_file(`STREAM_SIZE_OUT_m_axis_video_m_axis_video_TDEST);
            file_wr_port_m_axis_video_m_axis_video_TDEST.config_file(   
                    `AUTOTB_TVOUT_m_axis_video_m_axis_video_TDEST_wrapc,
                    TVOUT_transaction_size_queue                            
                );                                                          
                                                                            

            fork                                                                               
                forever begin
                    @refm.allaxilite_write_data_finish;
                    `uvm_info(this.get_full_name(), "receive allaxilite_write_finish axilite write_mem_page_process", UVM_LOW)
                    void'(refm.mem_blk_pages_control_thresh.pages.pop_front());
                    void'(refm.mem_blk_pages_control_rows.pages.pop_front());
                    void'(refm.mem_blk_pages_control_cols.pages.pop_front());
                end
                                                                                               
                forever begin
                    @refm.dut2tb_ap_done;
                    `uvm_info(this.get_full_name(), "receive dut2tb_ap_done and do axim dump", UVM_LOW)
                    file_wr_port_m_axis_video_m_axis_video_TDATA.receive_ap_done();
                    file_wr_port_m_axis_video_m_axis_video_TKEEP.receive_ap_done();
                    file_wr_port_m_axis_video_m_axis_video_TSTRB.receive_ap_done();
                    file_wr_port_m_axis_video_m_axis_video_TUSER.receive_ap_done();
                    file_wr_port_m_axis_video_m_axis_video_TLAST.receive_ap_done();
                    file_wr_port_m_axis_video_m_axis_video_TID.receive_ap_done();
                    file_wr_port_m_axis_video_m_axis_video_TDEST.receive_ap_done();
                end                                                                            
                begin                                                                          
                    @refm.finish;                                                              
                    `uvm_info(this.get_full_name(), "receive FINISH", UVM_LOW)               
                    file_wr_port_m_axis_video_m_axis_video_TDATA.wait_write_file_done();
                    file_wr_port_m_axis_video_m_axis_video_TKEEP.wait_write_file_done();
                    file_wr_port_m_axis_video_m_axis_video_TSTRB.wait_write_file_done();
                    file_wr_port_m_axis_video_m_axis_video_TUSER.wait_write_file_done();
                    file_wr_port_m_axis_video_m_axis_video_TLAST.wait_write_file_done();
                    file_wr_port_m_axis_video_m_axis_video_TID.wait_write_file_done();
                    file_wr_port_m_axis_video_m_axis_video_TDEST.wait_write_file_done();
                end                                                                            
                begin                                                                      
                    forever begin                                                              
                        wait(write_section_done_m_axis_video_m_axis_video_TDATA && write_section_done_m_axis_video_m_axis_video_TKEEP && write_section_done_m_axis_video_m_axis_video_TSTRB && write_section_done_m_axis_video_m_axis_video_TUSER && write_section_done_m_axis_video_m_axis_video_TLAST && write_section_done_m_axis_video_m_axis_video_TID && write_section_done_m_axis_video_m_axis_video_TDEST);                          
                        write_section_done_m_axis_video_m_axis_video_TDATA = 0;                                               
                        write_section_done_m_axis_video_m_axis_video_TKEEP = 0;                                               
                        write_section_done_m_axis_video_m_axis_video_TSTRB = 0;                                               
                        write_section_done_m_axis_video_m_axis_video_TUSER = 0;                                               
                        write_section_done_m_axis_video_m_axis_video_TLAST = 0;                                               
                        write_section_done_m_axis_video_m_axis_video_TID = 0;                                               
                        write_section_done_m_axis_video_m_axis_video_TDEST = 0;                                               
                        -> refm.allsvr_output_done;                                         
                    end                                                                        
                end                                                                        
            join                                                                               
        endtask                                                                                
                                                                                               
         virtual function void create_TVOUT_transaction_size_queue_by_file(string TVOUT_file); 
             typedef bit [31: 0] DATA_QUEUE_TYPE [$];                                     
             DATA_QUEUE_TYPE TV_Queue [$];                                                  
             DATA_QUEUE_TYPE TV;                                                               
             string file_queue [$];                                                         
             integer bitwidth_queue [$];                                                    
             file_queue.push_back(TVOUT_file);                                                 
             bitwidth_queue.push_back(32);                                                     
                                                                                               
             file_rd_TVOUT_transaction_size.config_file(                                       
                 file_queue,                                                                   
                 bitwidth_queue                                                                
             );                                                                                
                                                                                               
             file_rd_TVOUT_transaction_size.read_TVIN_file();                                  
                                                                                               
             TV_Queue = file_rd_TVOUT_transaction_size.TV_Queue;                               
             TVOUT_transaction_size_queue.delete();                                            
             while (TV_Queue.size() > 0) begin                                                 
                 TV = TV_Queue.pop_front();                                                    
                 if (TV.size() != 1)                                                           
                         `uvm_fatal(this.get_full_name(), $sformatf("number of each transaction size should be 1, read %0d in file %0s   ", TV.size(), TVOUT_file))
                 `uvm_info(this.get_full_name(), $sformatf("get transaction size %0d", TV[0]), UVM_MEDIUM)
                 TVOUT_transaction_size_queue.push_back(TV.pop_front());                       
             end                                                                               
         endfunction                                                                           
                                                                                               
        virtual function void write_svr_master_s_axis_video(svr_transfer#(44) tr);
            `uvm_info(this.get_full_name(), "port s_axis_video collected one pkt", UVM_DEBUG);          
        endfunction
                   
        virtual function void write_svr_slave_m_axis_video(svr_transfer#(44) tr);
            `uvm_info(this.get_full_name(), "port m_axis_video collected one pkt", UVM_DEBUG);          
            file_wr_port_m_axis_video_m_axis_video_TDATA.write_TVOUT_data(tr.data[31: 0]);
            write_file_done_m_axis_video_m_axis_video_TDATA = file_wr_port_m_axis_video_m_axis_video_TDATA.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TDATA = file_wr_port_m_axis_video_m_axis_video_TDATA.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TDATA) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TDATA", UVM_MEDIUM)
            file_wr_port_m_axis_video_m_axis_video_TKEEP.write_TVOUT_data(tr.data[35: 32]);
            write_file_done_m_axis_video_m_axis_video_TKEEP = file_wr_port_m_axis_video_m_axis_video_TKEEP.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TKEEP = file_wr_port_m_axis_video_m_axis_video_TKEEP.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TKEEP) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TKEEP", UVM_MEDIUM)
            file_wr_port_m_axis_video_m_axis_video_TSTRB.write_TVOUT_data(tr.data[39: 36]);
            write_file_done_m_axis_video_m_axis_video_TSTRB = file_wr_port_m_axis_video_m_axis_video_TSTRB.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TSTRB = file_wr_port_m_axis_video_m_axis_video_TSTRB.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TSTRB) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TSTRB", UVM_MEDIUM)
            file_wr_port_m_axis_video_m_axis_video_TUSER.write_TVOUT_data(tr.data[40: 40]);
            write_file_done_m_axis_video_m_axis_video_TUSER = file_wr_port_m_axis_video_m_axis_video_TUSER.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TUSER = file_wr_port_m_axis_video_m_axis_video_TUSER.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TUSER) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TUSER", UVM_MEDIUM)
            file_wr_port_m_axis_video_m_axis_video_TLAST.write_TVOUT_data(tr.data[41: 41]);
            write_file_done_m_axis_video_m_axis_video_TLAST = file_wr_port_m_axis_video_m_axis_video_TLAST.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TLAST = file_wr_port_m_axis_video_m_axis_video_TLAST.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TLAST) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TLAST", UVM_MEDIUM)
            file_wr_port_m_axis_video_m_axis_video_TID.write_TVOUT_data(tr.data[42: 42]);
            write_file_done_m_axis_video_m_axis_video_TID = file_wr_port_m_axis_video_m_axis_video_TID.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TID = file_wr_port_m_axis_video_m_axis_video_TID.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TID) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TID", UVM_MEDIUM)
            file_wr_port_m_axis_video_m_axis_video_TDEST.write_TVOUT_data(tr.data[43: 43]);
            write_file_done_m_axis_video_m_axis_video_TDEST = file_wr_port_m_axis_video_m_axis_video_TDEST.is_write_file_done();
            write_section_done_m_axis_video_m_axis_video_TDEST = file_wr_port_m_axis_video_m_axis_video_TDEST.is_write_section_done();
            if(write_section_done_m_axis_video_m_axis_video_TDEST) 
                `uvm_info("m_axis_video rx data done", "signal name:m_axis_video_TDEST", UVM_MEDIUM)
        endfunction
                   
        virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        endfunction

        virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
        endfunction

    endclass                                                                                   
                                                                                               
`endif                                                                                         
