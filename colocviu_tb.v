//------------------------------------------------------------------------------
// Universitatea Transilvania din Brasov
// Facultatea IESC
// Proiect     : Colocviu ED
// Modul       : colocviu
// Autor       : Turtubă Florin-Răzvan
// Data        : Mai 28, 2024
//------------------------------------------------------------------------------

module colocviu_tb;
wire clk;
wire rst_n;
reg A;
wire Q4;

ck_rst_tb #(
.CK_SEMIPERIOD ('d10)
) i_ck_rst_tb(
.clk (clk),
.rst_n (rst_n)
);

colocviu i_colocviu_DUT(
.clk (clk),
.rst_n (rst_n),
.A (A),
.Q4 (Q4)
);

initial begin
  A <= 0;
  @(posedge rst_n);
  @(posedge rst_n);
  @(posedge clk);
  A <= 1;
  repeat (2) @(posedge clk);
  A <= 0;
  repeat (4) @(posedge clk);
  A <= 1;
  repeat (1) @(posedge clk);
  A <= 0;
  repeat (3) @(posedge clk);
  A <= 1;
  repeat (3) @(posedge clk);
  A <= 0;
  repeat (4) @(posedge clk);
  A <= 1;
  repeat (4) @(posedge clk);
  A <= 0;
  repeat (4) @(posedge clk);
  $display("Final de simulare");
  $stop();
end

endmodule