module filter_stage #(
    parameter WIDTH = 16,
    parameter TAPS = 4
) (
    input  logic clk,
    input  logic rst_n,
    input  logic [WIDTH-1:0] data_in,
    input  logic valid_in,
    output logic [WIDTH-1:0] data_out,
    output logic valid_out
);
    // Internal signals
    logic [WIDTH-1:0] delay_line [TAPS-1:0];
    logic [WIDTH-1:0] sum;
    
    // Tap delay line using multiple delay cells
    generate
        for (genvar i = 0; i < TAPS; i++) begin : tap_gen
            delay_cell #(
                .WIDTH(WIDTH)
            ) u_delay_cell (
                .clk    (clk),
                .rst_n  (rst_n),
                .d      (i == 0 ? data_in : delay_line[i-1]),
                .q      (delay_line[i])
            );
        end
    endgenerate
    
    // Sum the taps
    always_comb begin
        sum = '0;
        for (int i = 0; i < TAPS; i++) begin
            sum = sum + delay_line[i];
        end
    end
    
    // Output register
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_out <= '0;
            valid_out <= 1'b0;
        end else begin
            data_out <= sum[WIDTH+1:2]; // Divide by 4
            valid_out <= valid_in;
        end
    end
endmodule 