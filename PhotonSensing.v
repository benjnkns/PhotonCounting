module PhotonSensing ( 
input button1, button2, clk,
output reg led0, led1, led2, led3, led4, led5, led6, led7, led8, led9, led10, led11, led12, led13, led14, led15
);

reg record;
reg [15:0] timer;


always @(posedge clk) begin			//this will be the laser pulse
	if (!button1) begin					//remove need for button one and immediately reset timer / start recording
		timer <= 16'b0000000000000000;//reset timer
		record <= 1'b1	;					//start recording
//		led0 <= 1'b1;
//		led1 <= 1'b0;
		end
	if (!button2) begin					//this will be the pmt output signal after lvds	
		record <= 1'b0;					//stop recording
//		led0 <= 1'b0;
//		led1 <= 1'b1;
		led0 <= timer[0];
		led1 <= timer[1];
		led2 <= timer[2];
		led3 <= timer[3];
		led4 <= timer[4];
		led5 <= timer[5];
		led6 <= timer[6];
		led7 <= timer[7];
		led8 <= timer[8];
		led9 <= timer[9];
		led10 <= timer[10];
		led11 <= timer[11];
		led12 <= timer[12];
		led13 <= timer[13];
		led14 <= timer[14];
		led15 <= timer[15];
		end
	if (record == 1'b1) begin
		timer <= timer +1;				//increment timer
//		led0 <= 1'b1;
		end
end

endmodule
	