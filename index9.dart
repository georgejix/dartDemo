main(){
  print("类枚举");
  var state1 = State.Start;
  state1.log();
  state1 = state1.next();
  state1.log();
}

enum Color{
  Red,Green,Yellow;
}

enum State{
  Start("开始",0),
  Running("进行中",1),
  End("结束",2);

  final String detail;
  final int value;
  const State(this.detail, this.value);

  void log(){
    print("state detail = $detail value = $value");
  }

  State next(){
    var result = State.Start;
     switch(value){
      case 0:
        result= Running;
      case 1:
        result= End;
      case 2:
        result= Start;
    };
    return result;
  }
}