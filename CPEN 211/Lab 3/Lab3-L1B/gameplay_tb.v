// This module is a testbench to test out the adjacent edge case of the tic tac toe game and plays the computer against itself in another game
module gameplay_tb ;
  reg [8:0] xin, oin ;
  wire [8:0] xout, oout ;

  TicTacToe dut(xin, oin, xout) ;
  TicTacToe opponent(oin, xin, oout) ;

  initial begin
    // all zeros, should pick middle
    xin = 0 ; oin = 0 ; 
    #100 $display("%b %b -> %b", xin, oin, xout) ;
    // can win across the top
    xin = 9'b101 ; oin = 0 ; 
    #100 $display("%b %b -> %b", xin, oin, xout) ;
    // near-win: can't win across the top due to block
    xin = 9'b101 ; oin = 9'b010 ; 
    #100 $display("%b %b -> %b", xin, oin, xout) ;
    // block in the first column
    xin = 0 ; oin = 9'b100100 ; 
    #100 $display("%b %b -> %b", xin, oin, xout) ;
    // block along a diagonal
    xin = 0 ; oin = 9'b010100 ; 
    #100 $display("%b %b -> %b", xin, oin, xout) ;
    // start a game - x goes first
    xin = 0 ; oin = 0 ; 
    repeat (6) begin
      #100
      $display("%h %h %h", {xin[0],oin[0]},{xin[1],oin[1]},{xin[2],oin[2]}) ;
      $display("%h %h %h", {xin[3],oin[3]},{xin[4],oin[4]},{xin[5],oin[5]}) ;
      $display("%h %h %h", {xin[6],oin[6]},{xin[7],oin[7]},{xin[8],oin[8]}) ;
      $display(" ") ;
      xin = (xout | xin) ; 
      #100 
      $display("%h %h %h", {xin[0],oin[0]},{xin[1],oin[1]},{xin[2],oin[2]}) ;
      $display("%h %h %h", {xin[3],oin[3]},{xin[4],oin[4]},{xin[5],oin[5]}) ;
      $display("%h %h %h", {xin[6],oin[6]},{xin[7],oin[7]},{xin[8],oin[8]}) ;
      $display(" ") ;
      oin = (oout | oin) ;
    end

    //Starts another game with edge block case
    $display("***Tests the adjacent edge case***");
    xin=0;oin=9'b100000000; #100;
    $display("%h %h %h", {xin[0],oin[0]},{xin[1],oin[1]},{xin[2],oin[2]}) ;
    $display("%h %h %h", {xin[3],oin[3]},{xin[4],oin[4]},{xin[5],oin[5]}) ;
    $display("%h %h %h", {xin[6],oin[6]},{xin[7],oin[7]},{xin[8],oin[8]}) ;
    $display(" ") ;
    xin = (xout|xin); #100;
    $display("%h %h %h", {xin[0],oin[0]},{xin[1],oin[1]},{xin[2],oin[2]}) ;
    $display("%h %h %h", {xin[3],oin[3]},{xin[4],oin[4]},{xin[5],oin[5]}) ;
    $display("%h %h %h", {xin[6],oin[6]},{xin[7],oin[7]},{xin[8],oin[8]}) ;
    $display(" ") ;
    oin=9'b100000001; #100;
    $display("%h %h %h", {xin[0],oin[0]},{xin[1],oin[1]},{xin[2],oin[2]}) ;
    $display("%h %h %h", {xin[3],oin[3]},{xin[4],oin[4]},{xin[5],oin[5]}) ;
    $display("%h %h %h", {xin[6],oin[6]},{xin[7],oin[7]},{xin[8],oin[8]}) ;
    $display(" ") ;
    xin = (xout|xin); #100;
    $display("%h %h %h", {xin[0],oin[0]},{xin[1],oin[1]},{xin[2],oin[2]}) ;
    $display("%h %h %h", {xin[3],oin[3]},{xin[4],oin[4]},{xin[5],oin[5]}) ;
    $display("%h %h %h", {xin[6],oin[6]},{xin[7],oin[7]},{xin[8],oin[8]}) ;
    $display(" ") ;

  end
endmodule
