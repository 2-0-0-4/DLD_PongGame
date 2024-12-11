module buzzer(
    input clk_100MHz,     // 100 MHz clock
    input enable,         // Enable signal for buzzer
    output reg buzzer_out // Output signal to buzzer
);

    // Parameters
    parameter target_count = 10000;  // 2 kHz frequency
    parameter duty_cycle = 20000;   // 40% duty cycle

    // Internal signals
    reg [31:0] counter = 0;

    always @(posedge clk_100MHz) begin
        if (enable) begin
            if (counter >= target_count - 1) begin
                counter = 0;  // Reset counter
            end else begin
                counter = counter + 1; // Increment counter
            end

            // Control the output based on duty cycle
            buzzer_out = (counter < duty_cycle) ? 1 : 0;
        end else begin
            buzzer_out = 0; // Turn off buzzer
            counter = 0;    // Reset counter
        end
    end
endmodule
