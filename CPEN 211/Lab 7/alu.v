// arithmetic logic unit (ALU) module to compute arithmetic or logical operations 
module ALU(ALUop, Ain, Bin, ALUout, status);
  input [1:0] ALUop; 
  input [15:0] Ain; 
  input [15:0] Bin; 
  output [15:0] ALUout; 
  reg [15:0] ALUout; 
  output [2:0] status; 
  wire [15:0] addsubout; 
  wire ovf;

  // AddSub module ouputs the result of addition or subtraction (depending on ALUop[0]
  AddSub addersubtractor(Ain, Bin, ALUop[0], addsubout, ovf); 
  
  always@* begin
    case(ALUop)  
      2'b10: ALUout = Ain & Bin; // if ALUop is 10, AND the inputs 
      2'b11: ALUout = ~Bin;      // if ALUop is 11, NOT input B 
      default: ALUout = addsubout; // if ALUop is 00, addsubout adds, if ALUop is 01, addsubout subtracts 
    endcase 
  end 

  // status[0] is 1 if ALUout is 16'b0 - zero flag 
  assign status[0] = {~ALUout[15] & ~ALUout[14] & ~ALUout[13] & ~ALUout[12] & ~ALUout[11] & 
                  ~ALUout[10] & ~ALUout[9] & ~ALUout[8] & ~ALUout[7] & ~ALUout[6] & ~ALUout[5] & 
                  ~ALUout[4] & ~ALUout[3] & ~ALUout[2] & ~ALUout [1] & ~ALUout[0]}; 
  // status[1] is the negative flag    
  assign status [1] = ALUout[15]; 
  // status[2] is the overflow flag 
  assign status[2] = ovf & ~ALUop[1]; 
endmodule 

// code from Dally section 10.3 - add a+b or subtract a-b, check for overflow
module AddSub(a,b,sub,s,ovf) ;
  parameter n=16;
  input [n-1:0] a, b ;
  input sub ; // subtract if sub=1, otherwise add
  output [n-1:0] s ;
  output ovf ; // 1 if overflow
  wire c1, c2 ; // carry out of last two bits
  wire ovf = c1 ^ c2 ; // overflow if signs don't match
  // add non sign bits
  assign {c1, s[n-2:0]} = a[n-2:0] + (b[n-2:0] ^ {n-1{sub}}) + sub ;
  // add sign bits
  assign {c2, s[n-1]} = a[n-1] + (b[n-1] ^ sub) + c1 ;
endmodule

