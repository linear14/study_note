void main() {
  double? number = 4.0;
  number = null;
  print(number); // null
  
  // number가 null이면 할당값 변경
  number ??= 3.0;
  print(number); // 3.0
}
