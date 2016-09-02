/********************************************
* VerifWorks Go2UVM App: VW_DVC_Go2UVM
* Automatically generated by VerifWorks's DVC_Go2UVM Riviera Apps 
* Thanks for using VerifWorks products
* Visit http://www.verifworks.com for more 
* Generated on   : 2016-06-21 21:50:32
********************************************/ 


// Generating Go2UVM top module for DUT: sprot
// ---------------------------------------------------------
`include "sprot_if.sv"
`include "sprot_go2uvm_test.svi"
module sprot_go2uvm;
  timeunit 1ns;
  timeprecision 1ns;
  parameter VW_CLK_PERIOD = 10;

  // Simple clock generator
  bit `VW_CLK ;
  always # (VW_CLK_PERIOD/2) `VW_CLK <= ~`VW_CLK;

  // Interface instance
  sprot_if sprot_if_0 (.*);

  // Connect TB clk to Interface instance clk

  // DUT instance
  sprot sprot_0 (
    .a(sprot_if_0.a),
    .b(sprot_if_0.b),
    .clk(sprot_if_0.clk),
    .rst_n(sprot_if_0.rst_n),
    .start(sprot_if_0.start),
    .prot_err(sprot_if_0.prot_err),
    .xfer_end(sprot_if_0.xfer_end)
  );


  // Using VW_Go2UVM
  sprot_test sprot_test_0;
  initial begin : go2uvm_test
    sprot_test_0 = new ();
    // Connect virtual interface to physical interface
    sprot_test_0.vif = sprot_if_0;
    // Kick start standard UVM phasing
    run_test ();
  end : go2uvm_test
endmodule : sprot_go2uvm

