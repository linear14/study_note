void main() {
  int num = 1;
  print(num is int);  // true
  print(num is String); // false
  
  print(num is! int); // false
  print(num is! String);  // true
}
