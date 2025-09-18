module oloca8(a, b, sum);
    input [7:0] a, b;
    output [7:0] sum;
    
    wire [7:0] carry;
    
    // Generate carry bits
    assign carry[0] = a[0] & b[0];
    assign carry[1] = a[1] & b[1];
    assign carry[2] = a[2] & b[2];
    assign carry[3] = a[3] & b[3];
    assign carry[4] = a[4] & b[4];
    assign carry[5] = a[5] & b[5];
    assign carry[6] = a[6] & b[6];
    assign carry[7] = a[7] & b[7];
    
    // Generate sum bits
    assign sum[0] = 1;
    assign sum[1] = 1;
    assign sum[2] = a[2] | b[2];
    assign sum[3] = a[3] | b[3];
    assign sum[4] = a[4] ^ b[4] ^ carry[3];
    assign sum[5] = a[5] ^ b[5] ^ carry[4];
    assign sum[6] = a[6] ^ b[6] ^ carry[5];
    assign sum[7] = a[7] ^ b[7] ^ carry[6];
endmodule

module oloca4(a, b, sum);
    input [3:0] a, b;
    output [3:0] sum;
    
    wire [3:0] carry;
    
    // Generate carry bits
    assign carry[0] = a[0] & b[0];
    assign carry[1] = a[1] & b[1];
    assign carry[2] = a[2] & b[2];
    assign carry[3] = a[3] & b[3];
    
    // Generate sum bits
    assign sum[0] = 1;
    assign sum[1] = 1;
    assign sum[2] = a[2] ^ b[2];
    assign sum[3] = a[3] ^ b[3] ^ carry[2];
endmodule

module oloca6(a, b, sum);
    input [5:0] a, b;
    output [5:0] sum;
    
    wire [5:0] carry;
    
    // Generate carry bits
    assign carry[0] = a[0] & b[0];
    assign carry[1] = a[1] & b[1];
    assign carry[2] = a[2] & b[2];
    assign carry[3] = a[3] & b[3];
    assign carry[4] = a[4] & b[4];
    assign carry[5] = a[5] & b[5];
    
    // Generate sum bits
    assign sum[0] = 1;
    assign sum[1] = 1;
    assign sum[2] = a[2] | b[2];
    assign sum[3] = a[3] ^ b[3];
    assign sum[4] = a[4] ^ b[4] ^ carry[3];
    assign sum[5] = a[5] ^ b[5] ^ carry[4];
endmodule

module oloca12(a, b, sum);
    input [11:0] a, b;
    output [11:0] sum;
    
    wire [11:0] carry;
    
    // Generate carry bits
    assign carry[0] = a[0] & b[0];
    assign carry[1] = a[1] & b[1];
    assign carry[2] = a[2] & b[2];
    assign carry[3] = a[3] & b[3];
    assign carry[4] = a[4] & b[4];
    assign carry[5] = a[5] & b[5];
    assign carry[6] = a[6] & b[6];
    assign carry[7] = a[7] & b[7];
    assign carry[8] = a[8] & b[8];
    assign carry[9] = a[9] & b[9];
    assign carry[10] = a[10] & b[10];
    assign carry[11] = a[11] & b[11];
    
    // Generate sum bits
    assign sum[0] = 1;
    assign sum[1] = 1;
    assign sum[2] = a[2] | b[2];
    assign sum[3] = a[3] | b[3];
    assign sum[4] = a[4] | b[4];
    assign sum[5] = a[5] | b[5];
    assign sum[6] = a[6] ^ b[6] ^ carry[5];
    assign sum[7] = a[7] ^ b[7] ^ carry[6];
    assign sum[8] = a[8] ^ b[8] ^ carry[7];
    assign sum[9] = a[9] ^ b[9] ^ carry[8];
    assign sum[10] = a[10] ^ b[10] ^ carry[9];
    assign sum[11] = a[11] ^ b[11] ^ carry[10];
endmodule


module ha(a, b, sum, carry);
    input a, b;
    output sum, carry;
    xor(sum, a, b);
    and(carry, a, b);
endmodule

module add_4_bit(a, b, sum);
    input [3:0] a, b;
    output [3:0] sum;
    assign sum = a + b;
endmodule

module add_6_bit(a, b, sum);
    input [5:0] a, b;
    output [5:0] sum;
    assign sum = a + b;
endmodule

module add_8_bit(a, b, sum);
    input [7:0] a, b;
    output [7:0] sum;
    
    assign sum = a + b;
endmodule

module add_12_bit(a, b, sum);
    input [11:0] a, b;
    output [11:0] sum;
    assign sum = a + b;
endmodule

module vedic_2_x_2(a, b, c);
    input [1:0] a;
    input [1:0] b;
    output [3:0] c;
    wire [3:0] c;
    wire [3:0] temp;
    
    assign c[0] = a[0] & b[0];
    assign temp[0] = a[1] & b[0];
    assign temp[1] = a[0] & b[1];
    assign temp[2] = a[1] & b[1];
    
    ha z1(temp[0], temp[1], c[1], temp[3]);
    ha z2(temp[2], temp[3], c[2], c[3]);
endmodule

module vedic_4_x_4(a, b, c);
    input [3:0] a;
    input [3:0] b;
    output [7:0] c;
    wire [3:0] q0;	
    wire [3:0] q1;	
    wire [3:0] q2;
    wire [3:0] q3;	
    wire [7:0] c;
    wire [3:0] temp1;
    wire [5:0] temp2;
    wire [5:0] temp3;
    wire [5:0] temp4;
    wire [3:0] q4;
    wire [5:0] q5;
    wire [5:0] q6;

    vedic_2_x_2 z1(a[1:0], b[1:0], q0[3:0]);
    vedic_2_x_2 z2(a[3:2], b[1:0], q1[3:0]);
    vedic_2_x_2 z3(a[1:0], b[3:2], q2[3:0]);
    vedic_2_x_2 z4(a[3:2], b[3:2], q3[3:0]);

    assign temp1 = {2'b0, q0[3:2]};
    add_4_bit z5(q1[3:0], temp1, q4);
    assign temp2 = {2'b0, q2[3:0]};
    assign temp3 = {q3[3:0], 2'b0};
    add_6_bit z6(temp2, temp3, q5);

    assign temp4 = {2'b0, q4[3:0]};
    add_6_bit z7(temp4, q5, q6);
    assign c[1:0] = q0[1:0];
    assign c[7:2] = q6[5:0];
endmodule

module vedic_8X8(a, b, c);
    input [7:0] a;
    input [7:0] b;
    output [15:0] c;

    wire [7:0] q0;  // Changed from 16-bit to 8-bit
    wire [7:0] q1;  // Changed from 16-bit to 8-bit
    wire [7:0] q2;  // Changed from 16-bit to 8-bit
    wire [7:0] q3;  // Changed from 16-bit to 8-bit
    wire [15:0] c;
    wire [7:0] temp1;
    wire [11:0] temp2;
    wire [11:0] temp3;
    wire [11:0] temp4;
    wire [7:0] q4;
    wire [11:0] q5;
    wire [11:0] q6;

    vedic_4_x_4 z1(a[3:0], b[3:0], q0);
    vedic_4_x_4 z2(a[7:4], b[3:0], q1);
    vedic_4_x_4 z3(a[3:0], b[7:4], q2);
    vedic_4_x_4 z4(a[7:4], b[7:4], q3);

    assign temp1 = {4'b0, q0[7:4]};
    add_8_bit z5(q1, temp1, q4);
    assign temp2 = {4'b0, q2};
    assign temp3 = {q3, 4'b0};
    add_12_bit z6(temp2, temp3, q5);
    assign temp4 = {4'b0, q4};

    add_12_bit z7(temp4, q5, q6);

    assign c[3:0] = q0[3:0];
    assign c[15:4] = q6[11:0];
endmodule



module approx_vedic_2_x_2(a, b, c);
    input [1:0] a;
    input [1:0] b;
    output [3:0] c;
    wire [3:0] c;
    wire [3:0] temp;
    
    assign c[0] = a[0] & b[0];
    assign temp[0] = a[1] & b[0];
    assign temp[1] = a[0] & b[1];
    assign temp[2] = a[1] & b[1];
    
    ha z1(temp[0], temp[1], c[1], temp[3]);
    ha z2(temp[2], temp[3], c[2], c[3]);
endmodule

module approx_vedic_4_x_4(a, b, c);
    input [3:0] a;
    input [3:0] b;
    output [7:0] c;
    wire [3:0] q0;    
    wire [3:0] q1;    
    wire [3:0] q2;
    wire [3:0] q3;    
    wire [7:0] c;
    wire [3:0] temp1;
    wire [5:0] temp2;
    wire [5:0] temp3;
    wire [5:0] temp4;
    wire [3:0] q4;
    wire [5:0] q5;
    wire [5:0] q6;

    vedic_2_x_2 z1(a[1:0], b[1:0], q0[3:0]);
    vedic_2_x_2 z2(a[3:2], b[1:0], q1[3:0]);
    vedic_2_x_2 z3(a[1:0], b[3:2], q2[3:0]);
    vedic_2_x_2 z4(a[3:2], b[3:2], q3[3:0]);

    assign temp1 = {2'b0, q0[3:2]};
    oloca4 z5(q1[3:0], temp1, q4);
    assign temp2 = {2'b0, q2[3:0]};
    assign temp3 = {q3[3:0], 2'b0};
    oloca6 z6(temp2, temp3, q5);

    assign temp4 = {2'b0, q4[3:0]};
    oloca6 z7(temp4, q5, q6);
    assign c[1:0] = q0[1:0];
    assign c[7:2] = q6[5:0];
endmodule

module approx_vedic_8X8(a, b, c);
    input [7:0] a;
    input [7:0] b;
    output [15:0] c;

    wire [7:0] q0;  
    wire [7:0] q1;  
    wire [7:0] q2;  
    wire [7:0] q3;  
    wire [15:0] c;
    wire [7:0] temp1;
    wire [11:0] temp2;
    wire [11:0] temp3;
    wire [11:0] temp4;
    wire [7:0] q4;
    wire [11:0] q5;
    wire [11:0] q6;

    vedic_4_x_4 z1(a[3:0], b[3:0], q0);
    vedic_4_x_4 z2(a[7:4], b[3:0], q1);
    vedic_4_x_4 z3(a[3:0], b[7:4], q2);
    vedic_4_x_4 z4(a[7:4], b[7:4], q3);

    assign temp1 = {4'b0, q0[7:4]};
    oloca8 z5(q1, temp1, q4);
    assign temp2 = {4'b0, q2};
    assign temp3 = {q3, 4'b0};
    oloca12 z6(temp2, temp3, q5);
    assign temp4 = {4'b0, q4};

    oloca12 z7(temp4, q5, q6);

    assign c[3:0] = q0[3:0];
    assign c[15:4] = q6[11:0];
endmodule



