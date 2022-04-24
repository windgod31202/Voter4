module voter_if (I, O);
input [3:0] I; // I 4 men
output [3:1] O; // O Result
reg [3:1] O;
    always@ (I)
        case (I)
            4'b0000:O[1] = 1;
            4'b0001:O[1] = 1;
            4'b0010:O[1] = 1;
            4'b0100:O[1] = 1;
            4'b1000:O[1] = 1;
            default:O[1] = 0;
        endcase
    always @(I) begin
        case (I)
            4'b0011:O[2] = 1;
            4'b0101:O[2] = 1;
            4'b0110:O[2] = 1;
            4'b1001:O[2] = 1;
            4'b1010:O[2] = 1;
            4'b1100:O[2] = 1;
            default:O[2] = 0;
        endcase
    end
    always @(I) begin
        case (I)
            4'b1110:O[3] = 1;
            4'b1101:O[3] = 1;
            4'b1011:O[3] = 1;
            4'b0111:O[3] = 1;
            4'b1111:O[3] = 1;
            default:O[3] = 0; 
        endcase
    end
endmodule