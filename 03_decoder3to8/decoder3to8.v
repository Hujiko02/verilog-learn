// 3-8 译码器 = 两个 2-4 译码器
// in[2]=0 用低片, in[2]=1 用高片
module decoder3to8(
    input      [2:0] in,
    output     [7:0] out
);
    wire [3:0] lo, hi;

    decoder2to4 u0 (.in(in[1:0]), .en(~in[2]), .out(lo));  // 低4位
    decoder2to4 u1 (.in(in[1:0]), .en( in[2]), .out(hi));  // 高4位

    assign out = {hi, lo};   // 拼成8位
endmodule
