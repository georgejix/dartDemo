main(){
  print("类 成员方法");
  var a1 = A1();
  a1.fun();
  a1.a3 = 6;
  a1.fun();

  var a3 = A3();
  a3.fun();
}

//set get
class A1{
  int a1 = 1;
  int a2 = 2;
  int get a3 => a1 + a2;
  set a3(int v) => a1 = v - a2;

  void fun(){
    print("A1 a1 = $a1 a2 = $a2 a3 = $a3");
  }
}

//abstract
abstract class A2{
  void fun();
}

class A3 extends A2{
  void fun(){
    print("A3!!");
  }
}