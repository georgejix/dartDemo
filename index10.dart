main(){
  print("扩展函数");

  var se = StringE("123").parseI();
  print(se);
  print("222".parseI());
  
}

extension StringE on String{
  int parseI(){
    return int.parse(this);
  }
}