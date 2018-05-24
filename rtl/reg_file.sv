

module register_file(

				input clk,				// clock 
				input  [4:0] read_rs1,  // Read register 1  
				input  [4:0] read_rs2,  // Read register 2
				input  [4:0] wreg_rd,   // Write register
				input  [31:0] wdata_rd, // Write data 
				input  we,				// Write enable
				output [31:0] rdata_rd1,// Read data 1
				output [31:0] rdata_rd2);// Read data 2

			reg [31:0] registers [31:0];  // Register file

			// Sequential write.

			always @(posedge clk) begin
				if (we)
					registers [wreg_rd] <= wdata_rd;
				end
			end // always @(posdege clk)
			
			//Combinational read

			assign rdata_rd1 = (read_rs1 == 0) ? 32'd0 : registers[read_rs1];
			assign rdata_rd2 = (read_rs2 == 0) ? 32'd0 : registers[read_rs2];
endmodule // register_file	






