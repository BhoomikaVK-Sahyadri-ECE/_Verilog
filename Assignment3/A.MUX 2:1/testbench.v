module tb_mux2to1;
  reg [3:0] a, b;
  reg sel;
  wire [3:0] y;
  mux2to1 uut(a, b, sel, y);
  initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1,tb_mux2to1); 
  end
  initial begin
    $display("Time sel a  b  | y");
    $monitor("%4t   %b   %d  %d | %d", $time, sel, a, b, y);
    a = 4'd5;b = 4'd8;
    sel = 0; #10
    sel = 1; #10
    sel = 0; #10
    sel = 1; #10

    $finish;
  end
endmodule
