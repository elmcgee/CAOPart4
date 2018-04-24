// ECE:3350 SISC processor project
// 16-bit mux

`timescale 1ns/100ps

module mux5 (in_a, in_b,in_c, sel, out);

  /*
   *  4-BIT MULTIPLEXER - mux5.v
   *
   *  Inputs:
   *   - in_a (4 bits): First input to the multiplexer. Chosen when sel = 00.
   *   - in_b (4 bits): Second input to the multiplexer. Chosen when sel = 01.
   *	-in_c (4 bits): Third input to the multiplexer. Chosen when sel = 11;.
   *   - sel: Controls which input is seen at the output. Output goes to the RF module
   *
   *  Outputs:
   *   - out (4 bits): Output from the multiplexer.
   *
   */

  input  [3:0] in_a;
  input  [3:0] in_b;
  input [3:0] in_c;
  input    [1:0]  sel;
  output [3:0] out;

  reg   [3:0] out;
   
  always @ (in_a, in_b, in_c, sel)
  begin
    if (sel == 2'b00)
      out = in_a;
    else if(sel == 2'b01)
      out = in_b;
    else if( sel == 2'b11)
      out = in_c;
  end

endmodule 