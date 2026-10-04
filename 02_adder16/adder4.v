// 4位加法器
// 功能: {cout,sum} = a + b + cin  (共5位结果)
module adder4(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);
    // {cout,sum} 拼成5位, 一次算完
    assign {cout, sum} = a + b + cin;
endmodule
