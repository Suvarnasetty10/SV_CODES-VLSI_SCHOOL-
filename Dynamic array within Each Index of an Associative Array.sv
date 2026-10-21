// Associative arrays with dyanmic array inside
module tb;
  int arr[string][];
  initial begin
  
    arr["Apple"]=new[2];
    
    arr["Banana"]=new[3];
    
    
    arr["Apple"][0]= 40;
    arr["Apple"][1]= 50;
    
    arr["Banana"][0]= 80;
    arr["Banana"][1]= 60;
    arr["Banana"][2]= 90;
    
    
    foreach(arr[i])
      foreach(arr[i][j])
        $display("arr[%0s][%0d]---> %0d",i,j,arr[i][j]);
    
    $display("arr --> %0p",arr);
  end
endmodule

output:arr[Apple][0]---> 40
arr[Apple][1]---> 50
arr[Banana][0]---> 80
arr[Banana][1]---> 60
arr[Banana][2]---> 90
arr --> '{"Apple":'{40, 50}, "Banana":'{80, 60, 90}}
