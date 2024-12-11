module top(
    input ir_sensor_1,
    input ir_sensor_2,
    input ir_sensor_3,
    input clk_100MHz,           // 100MHz on Basys 3
    input reset,                // btnC
    input ir_sensor,
    input ir_sensor2,
    input enable,
    output hsync,               // to VGA Connector
    output vsync,               // to VGA Connector
    output [11:0] rgb,         // to DAC, to VGA Connector
    output reg [3:0] result,
//    output reg home,
    output reg win,
    output reg lose,
    output stopped
);

    // Internal Connection Signals
    wire [9:0] w_x, w_y;
    wire video_on, p_tick;
    wire [3:0] min_10s, min_1s, sec_10s, sec_1s, counter_10s, counter_1s,counter2_1s,counter2_10s;
    reg [11:0] rgb_reg;
    wire [11:0] rgb_next;
    wire [3:0] score_binary;
    wire [3:0] score_binary2;
    wire clock_stopped;
    wire win_wire, lose_wire; // Define wires for home, win, and lose

    // Instantiate Modules
    vga_controller vga(
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .video_on(video_on),
        .hsync(hsync),
        .vsync(vsync),
        .p_tick(p_tick),
        .x(w_x),
        .y(w_y)
    );

    new_binary_clock bin(
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .enable(enable),
        .tick_1Hz(),             // not used
        .sec_1s(sec_1s),
        .sec_10s(sec_10s),
        .min_1s(min_1s),
        .min_10s(min_10s),
        .clock_stopped(clock_stopped)
    );

    ir_sensor_counter ir(
        .ir_sensor(ir_sensor),          // Input representing the IR sensor signal
        .clk_100MHz(clk_100MHz),        // 100 MHz clock input
        .reset(reset),                  // Reset signal
        .enable(enable),
        .counter_1s(counter_1s),        // Output representing the units place of the counter
        .counter_10s(counter_10s),     // Output representing the tens place of the counter    
        .score_binary(score_binary)
    );

    ir_sensor_counter2 ir2(
        .ir_sensor2(ir_sensor),          // Input representing the IR sensor signal
        .clk_100MHz(clk_100MHz),          // 100 MHz clock input
        .reset(reset),                    // Reset signal
        .enable(enable),
        .counter2_1s(counter2_1s),        // Output representing the units place of the counter
        .counter2_10s(counter2_10s),      // Output representing the tens place of the counter   
        .score_binary2(score_binary2) 
    );    

    pixel_clk_gen pclk(
        .ir_sensor_1(ir_sensor_1),
        .ir_sensor_2(ir_sensor_2),
        .ir_sensor_3(ir_sensor_3),
        .clk(clk_100MHz),
        .video_on(video_on),
        //.tick_1Hz(),
        .x(w_x),
        .y(w_y),
        .sec_1s(sec_1s),
        .sec_10s(sec_10s),
        .min_1s(min_1s),
        .min_10s(min_10s),
        .counter_1s(counter_1s),
        .counter_10s(counter_10s),
        .counter2_1s(counter2_1s),
        .counter2_10s(counter2_10s),
        .time_rgb(rgb_next)
    );

    always @(posedge clk_100MHz) begin
        if (p_tick) begin
            rgb_reg <= rgb_next;
            
            // Compare scores and set result outputs
            if (score_binary >= 4'b0111) begin //WINNING CONDITION
                result <= score_binary;
//                home <= 0; // Assign home value from wire
                win <= 1'b1;
                lose <= 0;
            end 
            else begin // LOSE
                result <= 0; // or score_binary2, as they are equal
//                home <= 0;
                win <= 0;
                lose <= 1'b1; // Assign lose value from wire
            end
        end
    end
    
    // rgb buffer
    always @(posedge clk_100MHz)
    if (p_tick)
        rgb_reg <= rgb_next;

    // output
    assign rgb = rgb_reg;
    assign stopped = clock_stopped;
    
    



    // Assign home, win, lose values from wires
//    always @* begin
//        home = home_wire;
//        win = win_wire;
//        lose = lose_wire;
//    end

endmodule
