// 3-8 译码器测试程序
`timescale 1ns/1ps

module tb_decoder3to8;
    reg  [2:0] in;
    wire [7:0] out;

    decoder3to8 uut (.in(in), .out(out));

    initial begin
        in = 3'd0; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd1; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd2; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd3; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd4; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd5; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd6; #10; $display("in=%b -> out=%b", in, out);
        in = 3'd7; #10; $display("in=%b -> out=%b", in, out);
        $finish;
    end
endmodule
