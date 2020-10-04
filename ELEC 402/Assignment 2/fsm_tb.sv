/*
Description:    This testbench is meant to simulate some basic functions of a train for the train controller FSM.
                Given certain outputs from the FSM, it will feedback information from "sensors" back to the FSM,
                which will respond accordingly.
*/

`timescale 1s/1ms
module FSM_tb();
    //clock and reset
    logic   clk, rst;

    //inputs
    logic   depart_ready,
            door_obstruction,
            door_is_open,
            near_station, 
            at_station,
            track_obstruction;
    logic[7:0] cruise_speed, current_speed, crawl_speed;

    //outputs
    logic   ctrl_door,
            ctrl_brake,
            ctrl_brake_emergency,
            ctrl_motor_accelerate,
            ctrl_motor_maintain;

    //FSM Instantiation
    train_FSM DUT(
        clk, rst,

        depart_ready,
        door_obstruction,
        door_is_open,
        near_station, 
        at_station,
        track_obstruction,

        cruise_speed, current_speed, crawl_speed,

        ctrl_door,
        ctrl_brake,
        ctrl_brake_emergency,
        ctrl_motor_accelerate,
        ctrl_motor_maintain
    );


    always begin
        clk = 0; #1;
        clk = 1; #1;
    end


    initial begin
        //initial conditions, train is sitting at station with doors open
        {   rst,
            depart_ready,
            door_obstruction,
            current_speed,
            near_station, 
            track_obstruction} = 0;
        at_station = 1;
        door_is_open = 1;
        cruise_speed = 100; //cruise speed of 100 km/h
        crawl_speed = 5; //crawl speed to align with station when arriving
        #30;

        //signal to FSM that it may close doors and leave station
        depart_ready = 1;

        //testbench will wait for door close signal from FSM
        while(ctrl_door == 1) #1;

        //testbench takes 10s to close doors
        #10; door_is_open = 0;

        //wait for FSM to enable motor acceleration
        while(1) begin
            if(ctrl_motor_accelerate) break;
            else #1;
        end

        at_station = 0;
        depart_ready = 0;

        //begin accelerating train. FSM will wait until current_speed = 100 km/h to switch to cruise state
        while(1) begin
            if(ctrl_motor_maintain) break;
            else begin
                current_speed = current_speed + 5;
                #2;
            end
        end

        //train will cruise until near_station signal is provided or unless something... unusual happens
        #30;

        //oh no something unusual happened!
        track_obstruction = 1;

        //wait until FSM outputs emergency brake signal, then begin slowing down current_speed
        while(1) begin
            if(ctrl_brake_emergency) break;
            else #1;
        end
        while(1) begin
            if(current_speed == 0) break;
            else current_speed = current_speed - 10;
            #2;
        end

        //after 10 seconds, obstruction is removed and train may continue
        #10;
        track_obstruction = 0;

        //wait for FSM to enable motor acceleration
        while(1) begin
            if(ctrl_motor_accelerate) break;
            else #1;
        end

        //begin accelerating train. FSM will wait until current_speed = 100 km/h to switch to cruise state
        while(1) begin
            if(ctrl_motor_maintain) break;
            else begin
                current_speed = current_speed + 5;
                #2;
            end
        end

        //train will cruise until near_station signal is provided or unless something... unusual happens
        #30;

        //nearing station
        near_station = 1;

        //wait until FSM outputs brake signal, then begin slowing down current_speed to crawl (5 km/h)
        while(1) begin
            if(ctrl_brake) break;
            else #1;
        end
        while(1) begin
            if(ctrl_motor_maintain) break;
            else current_speed = current_speed - 5;
            #2;
        end

        //train is now crawling, tell fsm when train aligned with platform
        #4;
        near_station = 0;
        at_station = 1;

        //wait for brake signal from fsm then stop train
        while(1) begin
            if(ctrl_brake) break;
            else #1;
        end
        current_speed = 0;

        //wait for door open signal from fsm
        while(1) begin
            if(ctrl_door == 1) break;
            else #1;
        end

        //doors closing
        #10; door_is_open = 1;

        #30;
        $stop;
    end
endmodule