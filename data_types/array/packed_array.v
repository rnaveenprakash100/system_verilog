module packed_array;
  bit [3:0][5:0]array1;
  reg  [3:0][2:0][5:0]array2;
  logic [3:0][2:0][1:0][5:0]array3;
  int i,j,k;
  initial begin
    
    //1 D array
    for (i=0;i<=3;i++) begin
      array1[i]=i;
    end
    $display("array1=%p",array1);
    
    //2 D array
    for (i=0;i<=3;i++) begin
      for (j=0;j<=2;j++) begin
        array2[i][j]=i;
      end
    end
    $display("array2=%p",array2);
    
    //3 D array
     for (i=0;i<=3;i++) begin
      for (j=0;j<=2;j++) begin
        for (k=0;k<=1;k++) begin
          array3[i][j][k]=j;
      end
    end
     end
    $display("array3=%p",array3);
  end 
endmodule
        
