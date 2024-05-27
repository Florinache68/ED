//------------------------------------------------------------------------------
// Universitatea Transilvania din Brasov
// Facultatea IESC
// Proiect     : Colocviu ED
// Modul       : colocviu
// Autor       : Turtubă Florin-Răzvan
// Data        : Mai 28, 2024
//------------------------------------------------------------------------------

module colocviu(
input A,
input clk,
input rst_n,
output reg Q4
);

reg Q1;
reg Q2;
reg Q3;
wire D2;
wire D4;

always @(posedge clk or negedge rst_n)
if(~rst_n) Q1 <= 0;
else Q1 <= A;

assign D2 = Q1 & A;

always @(posedge clk or negedge rst_n)
if(~rst_n) Q2 <= 0;
else Q2 <= D2;

always @(posedge clk or negedge rst_n)
if(~rst_n) Q3 <= 0;
else if (A) Q3 <= ~Q3;

assign D4 = Q2 | Q3;

always @(posedge clk or negedge rst_n)
if(~rst_n) Q4 <= 0;
else Q4 <= D4;

endmodule


