main(List<String> args){
  print("函数");
  print(args);
  print(fun3(6));
  fun4(v2:5);
  fun5(v2:false,v1 :2);
  fun6(v1:null);
  fun7(1,2);

  //函数调用可简写
  List<String> list1 = ["a","b","c","d","e"];
  list1.forEach(fun8);
  list1.map((v1) => "value=$v1").forEach(fun8);

  var fun9_1 = fun9("fun9_1");
  var fun9_2 = fun9("fun9_2");
  print(fun9_1(233));
  print(fun9_2(234));

  var f1 = fun1;
  print("f1 == fun1 : ${f1 == fun1}");

  print(fun10(10));
  var f11 = fun11(10);
  f11.forEach(fun8);
}

bool fun1(int v){
  return v > 5;
}

//不显式定义返回值
fun2(int v){
  return v > 5;
}

fun3(int v) => v > 5;

//参数可为null
void fun4({int? v1, int? v2}){
  print("fun4 $v1 $v2");
}

//命名参数可调换位置传入
void fun5({int v1 = 1, bool v2 = true}){
  print("fun5 $v1 $v2");
}

//必传参数
void fun6({required int? v1}){
  print("fun6 $v1");
}

//可选位置参数
void fun7(int v1, int v2, [int? v3 = 233]){
  print("fun7 $v1 $v2 $v3");
}

void fun8(String v1) => print(v1);

//返回值是function
Function fun9(String v1){
  return (int v2) => "$v1 $v2";
}

//同步，返回Iterable，yield添加返回元素
Iterable<int> fun10(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

//异步，返回Stream，yield添加返回元素
Stream<String> fun11(int n) async* {
  int k = 0;
  while (k < n) yield "${k++}";
}