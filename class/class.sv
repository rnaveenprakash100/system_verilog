class sender ;
  int addr;
  int data;
  //intialising the value using new constructor
  function new ( int  addr_arg,int data_arg);
    this.addr=addr_arg;
    this.data=data_arg;
  endfunction
  
  function void display();
    $display("addr=%0d, data=%0d",addr,data);
  endfunction
endclass

module tb;
  initial begin
  sender s1;
  s1=new(47,5);
  s1.display();
  end
endmodule

//output
  /*run -all
# addr=47, data=5
# exit*/
