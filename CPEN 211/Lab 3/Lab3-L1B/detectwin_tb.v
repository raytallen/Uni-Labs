// Testbench script for detectwin.v
// Tests various board win conditions and displays win_line output as wel as expected result
module detectwin_tb ();

    reg [8:0] sim_Ain;
    reg [8:0] sim_Bin;

    wire [7:0] sim_win_line;
    // Setting up simulated inputs and outputs
    DetectWinner DUT (
        .ain(sim_Ain),
        .bin(sim_Bin),
        .win_line(sim_win_line)
    );
    // Begin simulations
    initial begin
        sim_Ain [8:0] = 9'b000000111;
        sim_Bin [8:0] = 9'b000000000;
        #5;
        $display("Simulated top row A win, output %b, expected %b", sim_win_line, (8'b00000100));
        
        sim_Ain [8:0] = 9'b000000000;
        sim_Bin [8:0] = 9'b000111000;
        #5;
        $display("Simulated mid row B win, output %b, expected %b", sim_win_line, (8'b00000010));

        sim_Ain [8:0] = 9'b001001001;
        sim_Bin [8:0] = 9'b000000000;
        #5;
        $display("Simulated left col A  win, output %b, expected %b", sim_win_line, (8'b00100000));
        
        sim_Ain [8:0] = 9'b000000000;
        sim_Bin [8:0] = 9'b100100100;
        #5;
        $display("Simulated right col B win, output %b, expected %b", sim_win_line, (8'b00001000));
        
        sim_Ain [8:0] = 9'b100010001;
        sim_Bin [8:0] = 9'b000000000;
        #5;
        $display("Simulated topL_botR A  win, output %b, expected %b", sim_win_line, (8'b01000000));
        
        sim_Ain [8:0] = 9'b000000000;
        sim_Bin [8:0] = 9'b000000000;
        #5;
    end
endmodule