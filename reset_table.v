module FFD_resettable(clock, reset, d, q);
   parameter WIDTH = 32;
   input  [WIDTH-1:0] d;
   input clock, reset;
   output [WIDTH-1:0] q;
   reg [WIDTH-1:0] q;
   always @(posedge clock)
      #1.2 if (!reset) q <= 0;
      else q <= d;
endmodule
