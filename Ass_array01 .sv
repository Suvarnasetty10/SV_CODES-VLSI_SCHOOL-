module tb;
  int arr0[int];//An integer array with integer index
  int arr1[string];//An integer array with string index
  string arr2[string];//A string array with string index
  
  initial begin
    arr0='{1:99,
          100:45};
    
    arr1='{"suvarna":99,
          "nikhil":45};
    
   
    arr2='{"suvarna":"Ram",
          "nikhil":"Evalin",
          "princy":"Rosy"};
    
    $display("%0p",arr0);
    $display("%0p",arr1);
    $display("%0p",arr2);
    
  end
endmodule

//output:'
 {1:99, 100:45}
'{"nikhil":45, "suvarna":99}
'{"nikhil":"Evalin", "princy":"Rosy", "suvarna":"Ram"}
    
    
  
  
  
