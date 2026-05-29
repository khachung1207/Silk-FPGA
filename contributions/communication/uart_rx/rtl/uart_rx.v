module uart_rx (
    input clk,
    input rst_n,
    output reg [7:0] o_data
);
    // Lỗi cố ý: gán lộn wire vào block alwaysff hoặc sai syntax
    always @(posedge clk) begin
        if (!rst_n)
            o_data <= 0;
        else
            o_data = 8'hFF; // Verilator sẽ cảnh báo việc dùng gán bằng (=) trong luôn clock
    end
endmodule
