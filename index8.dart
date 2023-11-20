main(){
  print("类混入");

  var a2 = A2();
  a2.fun1();

  var a5 = A5();
  a5.fun3();
}

mixin A1{
  void fun1(){
    print("A1.fun1");
  }
}

class A2 with A1{

}

class A3{
  void fun3(){
    print("A3.fun3");
  }
}

mixin A4 on A3{

}

class A5 extends A3 with A4{

}

