class packet1;
  int data;
  function  new( int data);
    this.data=data;
  endfunction
endclass


class packet2;
  packet1 pkt1;
  int addr;
  function  new(int addr,int data);
    pkt1=new(data);
    this.addr=addr;
  endfunction
  
  function void copy (packet2 pkt);    //packet 2 (packet to be copied)
    this.addr=pkt.addr;
    this.pkt1.data=pkt.pkt1.data;
  endfunction
  
endclass

module deep_copy;
  packet2 pkt3,pkt4;
  
  initial begin
    pkt3=new(44,55);
    pkt4=new(22,33);
    pkt4.copy (pkt3);
    
    $display("data=%0d",pkt3.pkt1.data);
    $display("data=%0d",pkt4.pkt1.data);
    
    //changing the vlaue in the original
    
    pkt3.pkt1.data=14;
    $display("data=%0d",pkt3.pkt1.data);
    $display("data=%0d",pkt4.pkt1.data);
  end
endmodule

/*run -all
# data=55
# data=55
# data=14
# data=55
# exit*/
