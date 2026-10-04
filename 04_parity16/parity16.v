// 16位偶校验位发生器 = 用两个8位奇校验位发生器构成
// 偶校验: {data16, p} 中 1 的个数是偶数  ->  p = ^data16
module parity16(
    input  [15:0] data,
    output        p_even
);
    wire p_low, p_high;   // 两个8位奇校验位

    odd_parity8 u0 (.data(data[7:0]),  .p(p_low));   // 低8位
    odd_parity8 u1 (.data(data[15:8]), .p(p_high));  // 高8位

    // 两个奇校验位异或 = 16位偶校验位
    assign p_even = p_low ^ p_high;
endmodule
