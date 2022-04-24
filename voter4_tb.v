module input_4_vote_tb;
reg [3:0] I;    //input
wire [3:1] O;   //output
initial begin
    //列舉出所有2的4次方的二進位
    #0 I = 4'b0000;
    #10 I = 4'b0001;
    #10 I = 4'b0010;
    #10 I = 4'b0011;
    #10 I = 4'b0100;
    #10 I = 4'b0101;
    #10 I = 4'b0110;
    #10 I = 4'b0111;
    #10 I = 4'b1000;
    #10 I = 4'b1001;
    #10 I = 4'b1010;
    #10 I = 4'b1011;
    #10 I = 4'b1100;
    #10 I = 4'b1101;
    #10 I = 4'b1110;
    #10 I = 4'b1111;
    #10 $finish;
end
voter_if vote4_tb(.I(I), .O(O));
initial begin
    $dumpfile("vote4.vcd");
    $dumpvars(0, vote4_tb);
end
endmodule