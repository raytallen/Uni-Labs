
//equality comparator given to us in slide set 6

module EqComp(a, b, eq) ;
  parameter k=8;
  input  [k-1:0] a,b;
  output eq;
  wire   eq;

  assign eq = (a==b) ;
endmodule
