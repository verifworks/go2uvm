//#----------------------------------------------------------------------
//#   Copyright 2004-2014 CVC Pvt. Ltd. Bangalore, India
//#    http://www.cvcblr.com 
//#   All Rights Reserved Worldwide
//#
//#   Licensed under the Apache License, Version 2.0 (the
//#   "License"); you may not use this file except in
//#   compliance with the License.  You may obtain a copy of
//#   the License at
//#
//#       http://www.apache.org/licenses/LICENSE-2.0
//#
//#   Unless required by applicable law or agreed to in
//#   writing, software distributed under the License is
//#   distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
//#   CONDITIONS OF ANY KIND, either express or implied.  See
//#   the License for the specific language governing
//#   permissions and limitations under the License.
//#----------------------------------------------------------------------

class sprot_sequencer extends uvm_sequencer #(sprot_xactn);
  
  `uvm_component_utils(sprot_sequencer)

  function new(string name, uvm_component parent);
    super.new(.name(name), .parent(parent));
  endfunction : new

endclass : sprot_sequencer
