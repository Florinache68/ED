//------------------------------------------------------------------------------
// Universitatea Transilvania din Brasov
// Facultatea IESC
// Proiect     : Colocviu ED
// Modul       : colocviu
// Autor       : Turtubă Florin-Răzvan
// Data        : Mai 28, 2024
//------------------------------------------------------------------------------

module ck_rst_tb #(
    parameter CK_SEMIPERIOD = 10 )(
    output reg clk, 
    output reg rst_n
);  

initial 
begin
    clk = 0;
    forever #CK_SEMIPERIOD
        clk = ~clk;
end

initial begin
    rst_n <= 1;
    @(posedge clk);
    rst_n <= 0;
    @(posedge clk);
    @(posedge clk);
    rst_n <= 1;
    @(posedge clk);
end

endmodule