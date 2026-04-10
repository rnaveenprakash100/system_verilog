// Code your testbench here
// or browse Examples
class transaction;
  rand int addr;
  rand int data;
  constraint c1{ addr>250;
                addr<500;
               }
  constraint c2{ !(addr inside {[270:300]})||(data==500);}
endclass

module constraint_disabling;
  transaction tr;
  initial begin
    tr=new();
    
    // with constraint c1 
    repeat(5) begin
  tr.randomize;
  $display("data=%0d,addr=%0d",tr.data,tr.addr);
    end
    
    tr.c1.constraint_mode(0);   // disabling constraint
    
    //constraint disabling
    repeat(5) begin
    tr.randomize;  
  $display("data=%0d,addr=%0d",tr.data,tr.addr);
    end
    
  end
endmodule

/* without constraint disabling
 data=588339297,addr=363
# data=-699949109,addr=498
# data=277165595,addr=303
# data=-519089136,addr=448
# data=-121318706,addr=436

after constraint disabling
data=1200633076,addr=1932860873
# data=87132789,addr=-1775099737
# data=2101577690,addr=404068875
# data=-1350490059,addr=1015233214
# data=-1179207991,addr=1551072529
*/
