import 'dart:io';

main() async{
  print("并发");

  print("call dotask before");
  doTask();
  print("call dotask end");

  Future dotask2 = Future(doTask2);
  print("call dotask2 before");
  dotask2.then((str)=>print("!!! $str"));
  print("call dotask2 end");
}

Future<void> doTask() async{
  var str = await "dotask call";
  sleep(Duration(seconds: 2));
  print(str);
}


String doTask2(){
  var str = "dotask2 call";
  sleep(Duration(seconds: 2));
  print(str);
  return str;
}