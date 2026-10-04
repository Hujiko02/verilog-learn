// 16位加法器测试程序
`timescale 1ns/1ps

module tb_adder16;
    reg  [15:0] a, b;      // 输入用 reg
    reg         cin;
    wire [15:0] sum;       // 输出用 wire
    wire        cout;

    // 把被测模块接进来
    adder16 uut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    initial begin
        // ---------- 第1组测试 ----------
        a = 16'b0000000000000000; b = 16'b0000000000000000; cin = 1'b0;
        #10;
        $display("a=%b b=%b cin=%b  ->  cout=%b sum=%b",
                 a, b, cin, cout, sum);

        // ---------- 第2组测试 ----------
        a = 16'b0011000000111001; b = 16'b0001101010000101; cin = 1'b0;
        #10;
        $display("a=%b b=%b cin=%b  ->  cout=%b sum=%b",
                 a, b, cin, cout, sum);

        // ---------- 第3组测试: 溢出 ----------
        a = 16'b1111111111111111; b = 16'b0000000000000001; cin = 1'b0;
        #10;
        $display("a=%b b=%b cin=%b  ->  cout=%b sum=%b",
                 a, b, cin, cout, sum);

        $finish;
    end
endmodule
