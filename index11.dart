main(){
  print("call");

  var a = A();
  a("ccc");
}

//call函数，调用时可省略函数名
class A{
  void call(String s1){
    print("A call $s1");
  }
}