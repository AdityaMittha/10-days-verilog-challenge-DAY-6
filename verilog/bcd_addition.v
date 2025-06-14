module bcd_addition(a,b,cin,sum,cout );
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
reg cout_temp;
reg [4:0] sum_temp;

always @(*) begin
    sum_temp = a + b + cin;
    if(sum_temp > 9) begin
        sum_temp = sum_temp + 6;
        cout_temp = 1;
    end else begin
        cout_temp = 0;
    end
end

assign sum = sum_temp[3:0];
assign cout = cout_temp;

endmodule
