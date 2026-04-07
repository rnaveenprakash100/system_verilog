//data types
module two_state ;
  bit a;
  byte b;
  int c;
  shortint d;
  longint e;
  initial begin
    //default size 
    $display("size of byte =%d",$size(b));
    $display("size of  int=%d",$size(c));
    $display("size of shortint=%d",$size(d));
    $display("size of longint=%d",$size(e));
    //default value
    $display("default value of bit=%d",a);
    $display("default value of byte=%d",b);
    $display("default value of int=%d",c);
    $display("default value of shortint=%d",d);
    $display("default value of longint=%d",e);
    //initializing the values
    // a=x;error is denoted (invalid)
    a=1;
    b=5;
    c=6;
    d=7;
    e=2026;
    $display("value of bit=%d",a);
    $display(" value of byte=%d",b);
    $display(" value of int=%d",c);
    $display(" value of shortint=%d",d);
    $display(" value of longint=%d",e);
  end
endmodule
    
