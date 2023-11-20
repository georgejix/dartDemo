main(){
  //----变量类型----
  var a;
  a = 1;
  a = "aaa";
  var b = 1;
  //b = "bbb"; 初始化时赋值了，变量类型固定

  dynamic c = 1; //动态变量类型
  c = "ccc";
  Object? c2 = 2;
  c2 = "222";
  c2 = null;
  
  final d = 1;
  //d = 2;  final变量只可在初始化赋值一次
  const e = 22;//const编译时常量，需要在非运行时就能确定值

  late String str;
  str = "123";
  print(str);

}