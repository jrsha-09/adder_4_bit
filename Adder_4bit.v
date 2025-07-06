module adder_4bit (
    input  [3:0] A,        // 4-bit input A
    input  [3:0] B,        // 4-bit input B
    output [3:0] Sum,      // 4-bit sum output
    output       Carry     // Carry-out bit
);

    // Perform addition with 1 extra bit to detect carry
    wire [4:0] temp_sum;

    assign temp_sum = A + B;
    assign Sum      = temp_sum[3:0];
    assign Carry    = temp_sum[4];

endmodule
