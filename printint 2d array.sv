module tb;
  int arr[][string];
  initial begin
    arr=new[2];
    
    arr[0]='{"apple":20,
             "grapes":90};
    
    arr[1]='{"Rose":80,
             "Sunflower":40};
    
    foreach(arr[i])
      foreach(arr[i][j])
        $display("arr[%0d][%0s]---> %0d",i,j,arr[i][j]);
  end
endmodule

output:
arr[0][apple]---> 20
arr[0][grapes]---> 90
arr[1][Rose]---> 80
arr[1][Sunflower]---> 40
    
