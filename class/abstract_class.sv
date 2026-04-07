virtual class address ;
  int addr;
  function new (int addr1);
    this.addr=addr1;
    $display("addr=%0d",addr);
  endfunction
endclass

class packet extends address;
  int data;
  function new (int addr1,int data1);
    super .new(addr1);
    this.data=data1;
    $display("addr=%0d,data=%0d", addr,data);
  endfunction
endclass

module tb;
  initial begin
    packet p1;
    address ad;
    
    p1=new(50,15);
    
    // ad=new(45); illegal cannot create memory for the abstract class
  end 
endmodule

/* run -all
# addr=50
# addr=50,data=15
// # exit*/
