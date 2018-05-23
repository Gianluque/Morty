`include "./rtl/mux21.sv"

module testbench(
				   input [31:0] mux,
				   output reg [31:0] out_0,
				   output reg [31:0] out_1,
				   output reg		 sel);

			
			initial begin 
					$dumpfile("mux21_test.vcd");
					$dumvars(0, mux21_test);

					out_0 = 32'h1;
					out_1 = 32'h2;
					sel = 0;
					#20;
					sel = 1;
					#20;
					$finish;
			end // initial
endmodule // testbench