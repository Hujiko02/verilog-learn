// 2-4 译码器 (带使能 en)
// en=1: 输出中与 in 对应的那一位为1
// en=0: 输出全0
module decoder2to4(
    input      [1:0] in,
    input            en,
    output reg [3:0] out
);
    always @(*) begin
        if (en)
            out = 4'b0001 << in;   // 第 in 位为1
        else
            out = 4'b0000;
    end
endmodule
