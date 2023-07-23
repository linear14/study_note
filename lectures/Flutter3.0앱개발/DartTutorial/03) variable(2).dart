void main() {
  // 정수
  int number1 = 2;
  int number2 = 4;
  
  int sum = number1 + number2;
  int sub = number1 - number2;
  int mul = number1 * number2;
  // compile error
  // int div = number1 / number2;
  
  
  // 실수
  double n1 = 2.5;
  double n2 = 0.5;

  double sumD = n1 + n2;
  double subD = n1 - n2;
  double mulD = n1 * n2;
  double divD = n1 / n2;
  
  // boolean
  bool isTrue = true;
  bool isFalse = false;
    
  
  // String
  String name = 'Test';
  
  // var (유추)
  var name2 = 'Test';
  var number = 20;
  print(name2.runtimeType); // String
}