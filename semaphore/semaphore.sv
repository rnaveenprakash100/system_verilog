module semaphore;
  semaphore key;
  initial begin
    key=new(1);
    fork
       
       write();
      read();
      write();
    join
  end
        //task read
        task read();
          begin
            key.get(1);
            #5  $display("read operation");
                         key.put(1);
          end
          endtask
          
        //read task   
          task write();
          begin
            key.get(1);
            #4  $display("write operation");
                         key.put(1);
          end
          endtask
     endmodule                   
/*
# run -all
# write operation
# read operation
# write operation
# exit*/
