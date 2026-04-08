
class parent ;
  int a;
  function new(int a);
    this.a=a;
    
  endfunction
  
  function display();
    $display("a=%0d",a);
  endfunction
  
endclass

class child extends parent;
  int b;
  int c;
  function new(int a ,int b, int c);
    super.new(a);
    this.b=b;
    this.c=c;
    
  endfunction
  
  function display();
    $display("a=%0d ,b=%0d,c=%0d",a,b,c);
  endfunction
endclass
  
  module tb;
    initial begin
      parent p1,p2;
      child c1,c2;
      
      //assigning child object to parent class handle
      
      c1=new(10,20,39);
      if ($cast(p1,c1)) begin
      p1.a=40;
      p1.display();
      end
      //assigning parent object to child class handle
      p2=new(20);
      
      if ($cast(c2,p2))
        
        $display("cast passed");
      
      
    end 
  endmodule
      
      // a=40  output
     
      
