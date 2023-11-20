import 'dart:math';

main(){
  print("类 构造方法");

  var p1 = Point(1, 2);
  var x1 = p1?.x;

  var a1 = A1.create(1,2);
  a1.p();

  A3(1,2,3);
  A3.fun1([333,111,222]);

  A4.create(6);
  var a5 = A5(1,2);
  a5.fun();
}

class A1{
  int a1 = 0;
  int a2 = 0;
  A1(this.a1,this.a2){

  }
  //命名构造函数
  A1.create(this.a1,this.a2){
    a1 += 1;
    a2 += 1;
  }
  void p(){
    print("A1: a1=$a1 a2=$a2");
  }
}

class A2 extends A1{
  A2():super(2,3){
    print("A2 extends A1");
  }
}

class A3 extends A1{
  int a3 = 0;
  //like A3(int a1, int a2, int a3):super(a1,a2){
  //  this.a3 = a3;
  //}
  A3(super.a1,super.a2,this.a3){
    print("A3: a1=$a1 a2=$a2 a3=$a3");
  }
  A3.fun1(List<int> list):a3 = list[0],super(list[1],list[2]) {
    print("A3: a1=$a1 a2=$a2 a3=$a3");
  }
}

class A4{
  int a1 = 0;
  int a2 = 0;
  A4(this.a1, this.a2){
    print("A4: a1 = $a1 a2 = $a2");
  }
  //this后，不能有函数体
  A4.create(int v):this(5, v);
}

class A5{
  final int a1;
  final int a2;
  //const后，不能有函数体
  const A5(this.a1,this.a2);
  void fun(){
    print("A5: a1 = $a1 a2 = $a2");
  }
}