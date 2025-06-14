module tb9();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

bcd_addition uut(a,b,cin,sum,cout);

initial begin
    a=4'b0001; b=4'b1001; cin=0; #10;
    a=4'b1001; b=4'b1001; cin=1; #10;
    a=4'b0001; b=4'b0101; cin=1; #10;
    a=4'b0111; b=4'b1001; cin=1; #10;
    a=4'b0111; b=4'b0111; cin=0; #10;
    $finish;
end
endmodule
