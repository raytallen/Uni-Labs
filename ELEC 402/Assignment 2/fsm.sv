//functionality of this FSM is decribed in the report
module train_FSM(
    input           clk, rst,           // clk in seconds. If at anypoint in the future assignments the FSM requires higher speed for
                                        // certain functions, I will implement a high speed clock and a seperate timer to count seconds.

    input           depart_ready,       // High when train should depart station, low otherwise
                    door_obstruction,   // High when there is something blocking the doors, low when doors are clear
                    door_is_open,       // High when doors are open, low when doors are closed
                    near_station,       // High when train is approaching station and should apply brakes, low otherwise
                    at_station,         // High when train is aligned with platform, low otherwise
                    track_obstruction,  // High when there is an obstruction on the tracks, low when tracks are clear

    input[7:0]      cruise_speed,       // Preset cruise speed
                    current_speed,      // Current speed from the train's speed sensor
                    crawl_speed,        // Preset crawl speed when entering station

    output logic    ctrl_door,          // High to open door, low to close door
                    ctrl_brake,         // High to apply brakes, low to release brakes
                    ctrl_brake_emergency,   // High to apply emergency level brakes, low to release brakes
                    ctrl_motor_accelerate,  // High to accelerate train
                    ctrl_motor_maintain     // High to signal to motors to maintain current speed
);

    //states
    enum {
        s_idle,             //states are described in report
        s_doors_opened,
        s_doors_closing,
        s_doors_closed,
        s_accelerate,
        s_maintain_speed,
        s_brake,
        s_emergency_brake,
        s_crawl,
        s_arrived,
        s_doors_opening,
        s_fault
    } state;


    //state transition logic
    always_ff @(posedge clk) begin

        if(rst) state <= s_idle;

        else case(state)

            s_idle: state <= s_doors_opened;

            s_doors_opened: if(depart_ready) state <= s_doors_closing;

            s_doors_closing: begin
                if(door_obstruction) state <= s_doors_opening;
                else if(~door_is_open) state <= s_doors_closed;
            end

            s_doors_closed: state <= s_accelerate;

            s_accelerate: begin
                if(track_obstruction) state <= s_emergency_brake;
                else if(current_speed >= cruise_speed) state <= s_maintain_speed; 
            end

            s_maintain_speed: begin
                if(track_obstruction) state <= s_emergency_brake;
                else if(near_station) state <= s_brake;
            end

            s_brake: if(current_speed <= crawl_speed) state <= s_crawl;

            s_crawl: if(at_station) state <= s_arrived;

            s_arrived: if(current_speed == 0) state <= s_doors_opening;

            s_doors_opening: if(door_is_open) state <= s_doors_opened;

            s_emergency_brake: if(~track_obstruction) state <= s_accelerate;

            s_fault: state <= s_fault;

            default: state <= s_fault;

        endcase
    end

    //output logic (combinational)
    always_comb begin
        case(state)
            s_idle: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_opened: begin
                ctrl_door               = 1;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_closing: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_closed: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_accelerate: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 1;
                ctrl_motor_maintain     = 0;
            end

            s_maintain_speed: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 1;
            end

            s_brake: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_crawl: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 1;
            end

            s_arrived: begin
                ctrl_door               = 0;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_doors_opening: begin
                ctrl_door               = 1;
                ctrl_brake              = 1;
                ctrl_brake_emergency    = 0;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            s_emergency_brake: begin
                ctrl_door               = 0;
                ctrl_brake              = 0;
                ctrl_brake_emergency    = 1;
                ctrl_motor_accelerate   = 0;
                ctrl_motor_maintain     = 0;
            end

            //shoudn't enter these states
            s_fault: begin
                ctrl_door               = 1'bz;
                ctrl_brake              = 1'bz;
                ctrl_brake_emergency    = 1'bz;
                ctrl_motor_accelerate   = 1'bz;
                ctrl_motor_maintain     = 1'bz;
            end

            default: begin
                ctrl_door               = 1'bz;
                ctrl_brake              = 1'bz;
                ctrl_brake_emergency    = 1'bz;
                ctrl_motor_accelerate   = 1'bz;
                ctrl_motor_maintain     = 1'bz;
            end
        endcase
    end
endmodule






