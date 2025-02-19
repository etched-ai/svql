module ptr_manager #(
    parameter DEPTH = 8
) (
    input  logic clk,
    input  logic rst_n,
    input  logic write_en,
    input  logic read_en,
    output logic [$clog2(DEPTH)-1:0] write_ptr,
    output logic [$clog2(DEPTH)-1:0] read_ptr,
    output logic [DEPTH:0] count,
    output logic full,
    output logic empty
);
    // Pointer and count logic
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            write_ptr <= '0;
            read_ptr <= '0;
            count <= '0;
        end else begin
            if (write_en && !full) begin
                write_ptr <= write_ptr + 1'b1;
                count <= count + 1'b1;
            end
            if (read_en && !empty) begin
                read_ptr <= read_ptr + 1'b1;
                count <= count - 1'b1;
            end
        end
    end
    
    // Status flags
    assign full = (count == DEPTH);
    assign empty = (count == 0);
endmodule 