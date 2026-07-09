module clk_mux (
  input	 I0,
  input  I1,
  input  S,
  output Z 
);

`ifdef SYNTHESIS
  CKMUX2D4 u0 (.I0(I0), .I1(I1), .S(S), .Z(Z));
`else
  assign Z = S ? I1 : I0;
`endif  		    

endmodule

