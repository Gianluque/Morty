module mux41(
				input [31:0] in_0,
				input [31:0] in_1,
				input [31:0] in_2,
				input [31:0] in_3,
				input [3:0]  sel,
				output reg [31:0] out);

		always @(*) begin
			case (sel) 
					4'b0000: out = in_0;
					4'b0001: out = in_1;
					4'b0010: out = in_2;
					4'b0011: out = in_3;
				endcase // sel
        end 
endmodule // mux41