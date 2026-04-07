//data types
module four_state ;
  reg a;
  wire b;
  logic c;
  real d;
  integer e;
  reg [3:0]f;
  wire [3:0]g;
  logic [3:0]h;
  //real [3:0]i; invalid as it cant have packed
  //integer [3:0]j; invalid as it cant have packed
  initial begin
    //default size 
    $display("size of reg =%d",$size(a));
    $display("size of wire =%d",$size(b));
    $display("size of  logic=%d",$size(c));
    $display("size of real=%d",$size(d));
    $display("size of integer=%d",$size(e));
    //default value
    $display("default value of reg =%d",a);
    $display("default value of wire=%d",b);
    $display("default value of logic=%d",c);
    $display("default value of real=%d",d);
    $display("default value of integer=%d",e);
    //initializing the values
    // a=x;error is denoted (invalid)
    a=1;
    //b=5; illegal referance only assign possible
    c=6;
    d=7;
    e=2026;
    $display("value of reg a=%d",a);
    //$display(" value of wire b=%d",b);
    $display(" value of logic c=%d",c);
    $display(" value of real d=%f",d);
    $display(" value of integer e=%d",e);
    f=15;
  //  g=15; illegal referance only assign possible
    h=16;
    //i=7.7; packed is illegal with real
    //j=7.5; packed is illegal with integer
    $display("value of reg f=%d",f);
   // $display(" value of wire g=%d",g);
    $display(" value of logic h=%d",h);
    //$display(" value of real i=%f",i);
    //$display(" value of integer j=%d",j);
    
  end
endmodule
    
