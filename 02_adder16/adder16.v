// 16位加法器 = 4个4位加法器首尾相连
module adder16(
    input  [15:0] a,
    input  [15:0] b,
    input         cin,
    output [15:0] sum,
    output        cout
);
    wire c1, c2, c3;   // 中间进位

    adder4 u0 (.a(a[3:0]),   .b(b[3:0]),   .cin(cin), .sum(sum[3:0]),   .cout(c1));
    adder4 u1 (.a(a[7:4]),   .b(b[7:4]),   .cin(c1),  .sum(sum[7:4]),   .cout(c2));
    adder4 u2 (.a(a[11:8]),  .b(b[11:8]),  .cin(c2),  .sum(sum[11:8]),  .cout(c3));
    adder4 u3 (.a(a[15:12]), .b(b[15:12]), .cin(c3),  .sum(sum[15:12]), .cout(cout));
endmodule
