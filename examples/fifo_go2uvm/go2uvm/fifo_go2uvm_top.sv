/********************************************
* VerifWorks Go2UVM App: VW_DVC_Go2UVM
* Automatically generated by VerifWorks's DVC_Go2UVM Riviera Apps 
* Thanks for using VerifWorks products
* Visit http://www.verifworks.com for more 
* Generated on   : 2016-08-31 09:36:32
********************************************/ 


// Generating Go2UVM top module for DUT: fifo
// ---------------------------------------------------------
`include "fifo_if.sv"
`include "fifo_go2uvm_test.svi"
module go2uvm_fifo;
  timeunit 1ns;
  timeprecision 1ns;
  parameter VW_CLK_PERIOD = 10;

  // Simple clock generator
  bit `VW_CLK ;
  always # (VW_CLK_PERIOD/2) `VW_CLK <= ~`VW_CLK;

  // Interface instance
  fifo_if fifo_if_0 (.*);

  // Connect TB clk to Interface instance clk

  // DUT instance
  fifo fifo_0 (
    .clk(fifo_if_0.clk),
    .data_in(fifo_if_0.data_in),
    .pop(fifo_if_0.pop),
    .push(fifo_if_0.push),
    .rst_n(fifo_if_0.rst_n),
    .data_out(fifo_if_0.data_out),
    .empty(fifo_if_0.empty),
    .full(fifo_if_0.full),
    .pop_err_on_empty(fifo_if_0.pop_err_on_empty),
    .push_err_on_full(fifo_if_0.push_err_on_full)
  );


  // Using VW_Go2UVM
  fifo_test fifo_test_0;
  initial begin : go2uvm_test
    fifo_test_0 = new ();
    // Connect virtual interface to physical interface
    fifo_test_0.vif = fifo_if_0;
    // Kick start standard UVM phasing
    run_test ();
  end : go2uvm_test
endmodule : go2uvm_fifo

