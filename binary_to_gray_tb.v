//`include "binary_to_gray.v"
module binary_to_gray_tb;

	// Inputs
	reg [3:0] B;

	// Outputs
	wire [3:0] G;

	// Instantiate the Unit Under Test (UUT)
	binary_to_gray uut (
		.B(B), 
		.G(G)
	);

	initial begin
		
$dumpfile("binary_to_gray.vcd");
$dumpvars(0, uut);
		$monitor($time,"B=%h,G=%h",B,G);
		B=4'h0;
	#5	B=4'h1;
	#5	B=4'h2;
	#5	B=4'h3;
	#5	B=4'h4;
	#5	B=4'h5;
	#5	B=4'h6;
	#5	B=4'h7;
	#5	B=4'h8;
	#5	B=4'h9;
	#5	B=4'ha;
	#5	B=4'hb;
	#5	B=4'hc;
	#5	B=4'hd;
	#5	B=4'he;
	#5	B=4'hf;
	#5 $finish;
      
    end
  
endmodule