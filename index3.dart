main(){
  print("模式匹配");

  print("-----------1-----------");
  var a = 5;
  switch(a){
    case 1:
      print("1");
    case 2:
      print("2");
    case >=0 && <=5:
      print(">=0");
    case (5,10):
      print("(5,10)");
  }

  print("-----------2-----------");
  var list = [0,1,2];
  var [b1,b2,b3] = list;
  print("b1=$b1,b2=$b2,b3=$b3");

  print("-----------3-----------");
  var c = [1,2];
  switch(c){
    case [0 || 1,var c2]:
      print(c2);
  }

  print("-----------4-----------");
  var (d1,[d2,d3]) = (1,[2,3]);
  print(d2);

  print("-----------5-----------");
  var (e1,e2) = (1,2);
  (e2,e1) = (e1,e2);
  print("$e1,$e2");

  
  print("-----------6-----------");
  var f1 = "ab";
  var f2 = switch(f1){
    "a" || "b" || "c" => "abc",
    _ => "else"
  };
  print(f2);

  print("-----------7-----------");
  var g = (3,2);
  switch(g){
    case (var g1, var g2) when g1 < g2:
      print("g1<g2");
    case (var g1, var g2):
      if(g1 == g2) print("g1>g2");
  }

  print("-----------8-----------");
  Map<String,int> h = {"a":1,"b":2};
  print(h);
  for (var MapEntry(: key, value: count) in h.entries) {
  print('count=$key value=$count');
  }
  h.forEach((key, value) { print('count=$key value=$value');});

  print("-----------9-----------");
  print(calculateArea(Square(5)));

  print("-----------10-----------");
  var i = {
    "user":["zhangsan",18],
    "user2":["lisi",19]
  };
  var {"user2":[name,age]} = i;
  print("$name $age");
  if (i case {'user2': [String name, int age]}) {
  print('User $name is $age years old.');

  print("-----------11-----------");
  var j = 111;
  var j2 = j as int;
  print(j2);

  print("-----------12-----------");
  String? k = "12345";
  switch(k){
    case var k2?:
      print("k can be null");
  }

  print("-----------13-----------");
  List<String?> l = ["aa",null];
  switch(l){
    case ["aa",String lv]:
      print("value = $lv");
    case ["aa",var lv]:
      print("value2 = $lv");
  }

  print("-----------14-----------");
  (int?, int?) m = (1,2);
  var (m2!,m3!) = m;
  print("${m.$1} $m2,$m3");
  
  print("-----------15-----------");
  var n = [1,2];
  n = const [1,2];
  switch(n){
    case const [1,2]:
      print("const");
  }

  print("-----------16-----------");
  const o = 2;
  switch(2){
    case o:
      print("0 == 2");
  }

  print("-----------17-----------");
  var [p1,p2,...,p5,p6] = [1,2,3,4,5,6,7,8,9];
  print("$p1 $p2 $p5 $p6");
  var [p21,p22,...rest,p25,p26] = [1,2,3,4,5,6,7,8,9];
  print("$p21 $p22 $rest $p25 $p26");

  print("-----------18-----------");
  var q = (q1:"111",q2:"444");
  switch (q) {
    case (q1: var q1, q2: int q2): 
      print("111 $q1 $q2");
    case (:var q1, :var q2): 
      print("222 $q1 $q2");
  }

  print("-----------19-----------");
  var r = [1, 2, 3];
  var [_, r2, _] = r;
  print(r2);


}
  
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
      Square(length: var l) => l * l,
      Circle(radius: var r) => 3.14 * r * r
    };