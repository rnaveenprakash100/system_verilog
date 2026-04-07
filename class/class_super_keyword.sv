class bank_acc ;
  int acc_no;
  
  
  function new ();
    this.acc_no=1234;
    
  endfunction
  
endclass

class indian_bank extends bank_acc;
  int balance;
  int fund;
  function new(int balance1,int fund1);
    super.new();
    this.balance = balance1+fund1;
    this.fund=fund1;
    $display("acc_no=%0d,balance=%0d,fund=%0d",acc_no,balance,fund);
  endfunction
  endclass
    
    module tb;
      initial begin
        indian_bank b1;
        b1=new(400,500);
      end 
    endmodule
/*
run -all
# acc_no=1234,balance=900,fund=500
# exit*/ //output
    


  
