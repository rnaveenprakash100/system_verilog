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
/* output
run -all
# data=588339297,addr=363
# data=-699949109,addr=498
# data=277165595,addr=303
# data=-519089136,addr=448
# data=-121318706,addr=436
# data=-937788835,addr=451
# data=413619939,addr=403
# data=1132976853,addr=445
# data=839011722,addr=375
# data=1840099912,addr=462
# exit */
