main(){
  print("循环 分支");

  //数组放入循环函数
  var callback1 = [];
  for(var i = 0; i < 10; i++){
    callback1.add(()=>print(i));
  }
  for(var c in callback1){
    c();
  }
}