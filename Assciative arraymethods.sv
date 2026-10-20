module tb;
  int arr[int];
  int idx;
  initial begin
    arr[10]=78;
    arr[20]=90;
    arr[30]=29;
    
   //  arr.delete();
    //$display("After deleting key :%0p",arr);
    
    $display(" no of elements in array =%0d",arr.num());
    $display(" Size of array =%0d",arr.size());
    if(arr.first(idx))
      $display(" Smallest key=%0d",idx);
    if(arr.last(idx))
      $display(" Largest key=%0d",idx);
    
    idx=10;
    if(arr.next(idx));
    $display(" next key=%0d",idx);
    
    idx=30;
    if(arr.prev(idx));
    $display(" previous key=%0d",idx);
     
    //$display(" previous key=%0d",arr.prev(30));
    
    /* arr.delete();
    $display("After deleting key :%0p",arr);*/
    
    
    arr.delete(20);
    $display("After deleting key 20:%0p",arr);
    
    
     arr.delete();
    $display("After deleting key :%0p",arr);
    
  end
endmodule

Output:
no of elements in array =3
 Size of array =3
 Smallest key=10
 Largest key=30
 next key=20
 previous key=20
After deleting key 20:'{10:78, 30:29}
After deleting key :'{}
    
    
    
     
    
    
