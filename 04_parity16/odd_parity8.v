// 8位奇校验位发生器
// 奇校验: {data, p} 中 1 的个数是奇数  ->  p = ~^data
module odd_parity8(
    input  [7:0] data,
    output       p
);
    assign p = ~^data;   // ^data 是8位异或, 取反就是奇校验位
endmodule
