module tb;
  int arr[][int];
  initial begin
    arr=new[2];
    
    arr[0][1]= 10;
    arr[0][2]= 20;
    arr[0][3]= 30;
    
    
    arr[1][0]= 40;
    arr[1][1]= 50;
    arr[1][2]= 60;
    
    
    foreach(arr[i])
      foreach(arr[i][j])
        $display("arr[%0d][%0d]---> %0d",i,j,arr[i][j]);
    
    $display("arr --> %0p",arr);
  end
endmodule

//output:
arr[0][1]---> 10
arr[0][2]---> 20
arr[0][3]---> 30
arr[1][0]---> 40
arr[1][1]---> 50
arr[1][2]---> 60
arr --> '{'{1:10, 2:20, 3:30}, '{0:40, 1:50, 2:60}}
