module fifo #(
    parameter WIDTH = 8,  // Width of data
    parameter DEPTH = 4   // Number of entries in FIFO
)(
    input logic clk,        // Clock signal
    input logic rst_n,      // Active-low reset
    input logic wr_en,      // Write enable
    input logic rd_en,      // Read enable
    input logic [WIDTH-1:0] din,  // Data input
    output logic [WIDTH-1:0] dout, // Data output
    output logic full,      // FIFO full indicator
    output logic empty      // FIFO empty indicator
);

    // FIFO memory
    logic [WIDTH-1:0] mem [0:DEPTH-1];
    logic [2:0] wr_ptr, rd_ptr;  // Pointers for write and read

    // FIFO write operation
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            wr_ptr <= 0;
        else if (wr_en && !full)
            mem[wr_ptr] <= din;
    end

    // FIFO read operation
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n)
            rd_ptr <= 0;
        else if (rd_en && !empty)
            dout <= mem[rd_ptr];
    end

    // Full and empty flags
    assign full = (wr_ptr == DEPTH - 1);
    assign empty = (rd_ptr == wr_ptr);

endmodule
