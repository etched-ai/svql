module buffer_stage #(
    parameter WIDTH = 16,
    parameter DEPTH = 8
) (
    input  logic clk,
    input  logic rst_n,
    input  logic [WIDTH-1:0] data_in,
    input  logic write_en,
    input  logic read_en,
    output logic [WIDTH-1:0] data_out,
    output logic full,
    output logic empty
);
    // Internal memory
    logic [WIDTH-1:0] mem [DEPTH-1:0];
    logic [$clog2(DEPTH)-1:0] write_ptr, read_ptr;
    logic [DEPTH:0] count;
    
    // Memory control using pointer manager
    ptr_manager #(
        .DEPTH(DEPTH)
    ) u_ptr_manager (
        .clk      (clk),
        .rst_n    (rst_n),
        .write_en (write_en),
        .read_en  (read_en),
        .write_ptr(write_ptr),
        .read_ptr (read_ptr),
        .count    (count),
        .full     (full),
        .empty    (empty)
    );
    
    // Memory write
    always_ff @(posedge clk) begin
        if (write_en && !full) begin
            mem[write_ptr] <= data_in;
        end
    end
    
    // Memory read
    assign data_out = mem[read_ptr];
endmodule 