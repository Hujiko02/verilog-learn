// 16位偶校验位发生器测试程序
`timescale 1ns/1ps

module tb_parity16;
    reg  [15:0] data;
    wire        p_even;

    parity16 uut (.data(data), .p_even(p_even));

    initial begin
        data = 16'h0000; #10; $display("data=%h  p=%b", data, p_even);
        data = 16'h0001; #10; $display("data=%h  p=%b", data, p_even);
        data = 16'hFFFF; #10; $display("data=%h  p=%b", data, p_even);
        data = 16'hA5A5; #10; $display("data=%h  p=%b", data, p_even);
        $finish;
    end
endmodule
