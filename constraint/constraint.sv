class transaction;
  rand int addr;
  rand int data;
  constraint c1{ addr>250;
                addr<500;
               }
  constraint c2{ !(addr inside {[270:300]})||(data==500);}
endclass

module constraint1;
  
  transaction tr;
  initial begin
  tr=new();
    repeat(10) begin
  tr.randomize;
  $display("data=%0d,addr=%0d",tr.data,tr.addr);
    end
  end
endmodule
