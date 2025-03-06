typedef struct packed {
  logic [7:0] data;
  logic valid;
} data_packet_t;

module test (
  input  wire logic clk,
  input  wire logic rst_n,
  input  wire logic [7:0] data_in,
  input  wire logic valid_in,
  output wire logic [7:0] data_out,
  output wire logic valid_out
);

  // Internal signals
  data_packet_t reg_packet;
  
  // Assign internal struct fields
  assign reg_packet.data = data_in;
  assign reg_packet.valid = valid_in;

  // Module implementation goes here
  
  // Example: Simple pass-through logic using struct
  assign data_out = reg_packet.data;
  assign valid_out = reg_packet.valid;

endmodule
