`timescale 1ns / 1ps

module ir_sensor(
  input wire ir_sensor,   // Input from the IR sensor
  input wire clk_100MHz,       // Clock signal
  input wire reset,       // Reset signal
  output reg detection    // Output to indicate detection
);

// Define a state machine to process IR sensor data
reg [1:0] state;
reg ticks = 0;
parameter IDLE = 2'b00;
parameter DETECTING = 2'b01;

always @(posedge clk_100MHz or posedge reset) begin
  if (reset) begin
    state <= IDLE;
    detection <= 1'b0;
  end else begin
    case (state)
      IDLE: begin
        // Check if the IR sensor signal indicates detection
        if (ir_sensor == 1'b1) begin
          state <= DETECTING;
          // Set the detection output to indicate detection
          detection <= 1'b1;
        end else begin
          // Add a condition to keep detection low if reset is not pressed
          detection <= 1'b0;
          ticks <= 1'b0;
        end
      end

      DETECTING: begin
        // Continue detecting until the signal goes low
        if (ir_sensor == 1'b1) begin
          detection <= 1'b1; // Set the detection output
          ticks = 1'b1;
        end else begin
            if(ticks >= 20000)begin
              state <= IDLE;
              detection <= 1'b0;
              end 
             else begin
                ticks <= ticks + 1;
             end
        end
      end
    endcase
  end
end     

endmodule