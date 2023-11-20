main(){
  //----内置类型----
  //num
  print("-----------num-----------");
  int a1 = 1;
  double a2 = 1.1;
  print(a1.toDouble());
  print(a2.toInt());
  num a3 = 1;

  //string
  print("-----------string-----------");
  String s1 = "123";
  String s2 = '123';
  String s3 = '''${s1}2
  3
  4''';
  print(s3);
  String s4 = r"123456\n789";//前面加r，输出原始字符串
  print(s4);

  //bool
  print("-----------bool-----------");
  bool isTrue = true;
  bool isFalse = false;
  print(isFalse);

  //runes
  print("-----------runes-----------");
  var hi = 'Hi 🇩🇰 \u2665';
  print(hi);

  //record
  print("-----------record-----------");
  var record = ("a",i1:1,i2:2,"b");
  print(record);
  print(record.$2);

  //list
  print("-----------list-----------");
  var list1 = [1,2,3];
  List list2 = [2,3,4];
  list1.add(5);
  print(list1);

  //set
  print("-----------set-----------");
  var set1 = {1,2,3,4,5};
  print(set1);
  var set2 = <String>{};
  set2.add("a");
  print(set2);

  //map
  print("-----------map-----------");
  var map1 = {"a":1,"b":2};
  print(map1);
  var map2 = Map<String,int>();
  map2["1"] = 1;
  map2["2"] = 2;
  map2["3"] = 3;
  print(map2);

  //operaters
  print("-----------operaters-----------");
  var l1 = [1,2,3];
  var l2 = [...l1,4];
  print(l2);
  var l3 = [0,...?l1,4];
  print(l3);
  var b4 = false;
  var l4 = [0,1,2,3,if(b4) 4];
  print(l4);
  var l5 = [for(var i in l1) '$i'];
  print(l5);

  //别名
  print("-----------别名-----------");
  //typedef intList = List<int>;
}