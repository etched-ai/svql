module pipeline_top #(
    parameter logic [31:0] DATA_WIDTH = 64 / 2,
    parameter FILTER_TAPS = 4,
    parameter BUFFER_DEPTH = 8
) (
    input  logic clk,
    input  logic rst_n,
    input  logic [DATA_WIDTH-1:0] data_in,
    input  logic valid_in,
    input  logic read_en,
    output logic [DATA_WIDTH-1:0] data_out,
    output logic valid_out,
    output logic buffer_full,
    output logic buffer_empty
);
    // Internal signals
    logic [DATA_WIDTH-1:0] filter_data;
    logic filter_valid;
    
    // Filter stage instance
    filter_stage #(
        .WIDTH(DATA_WIDTH),
        .TAPS(FILTER_TAPS)
    ) u_filter_stage (
        .clk       (clk),
        .rst_n     (rst_n),
        .data_in   (data_in),
        .valid_in  (valid_in),
        .data_out  (filter_data),
        .valid_out (filter_valid)
    );
    
    // Buffer stage instance
    buffer_stage #(
        .WIDTH(DATA_WIDTH),
        .DEPTH(BUFFER_DEPTH)
    ) u_buffer_stage (
        .clk      (clk),
        .rst_n    (rst_n),
        .data_in  (filter_data),
        .write_en (filter_valid),
        .read_en  (read_en),
        .data_out (data_out),
        .full     (buffer_full),
        .empty    (buffer_empty)
    );
    
    assign valid_out = !buffer_empty;
endmodule 