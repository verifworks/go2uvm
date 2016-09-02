/********************************************
* VerifWorks Go2UVM App: VW_DVC_Go2UVM
* Automatically generated by VerifWorks's DVC_Go2UVM Riviera Apps 
* Thanks for using VerifWorks products
* Visit http://www.verifworks.com for more 
* Generated on   : 2016-06-21 21:50:32
********************************************/ 


// Generating SystemVerilog interface for module: sprot
// ---------------------------------------------------------
// Using VW_CLK as a text macro for clock 
// If your clock signal is named other than clk, change the macro below
`define VW_CLK clk
interface sprot_if (input logic `VW_CLK);
  logic   a;
  logic   b;
  logic   rst_n;
  logic   start;
  logic   prot_err;
  logic   xfer_end;
  // End of interface signals 


  // Start of clocking block definition 
  clocking cb @(posedge `VW_CLK);
    output a;
    output b;
    output rst_n;
    output start;
    input prot_err;
    input xfer_end;
  endclocking : cb
  // End of clocking block definition 

endinterface : sprot_if
