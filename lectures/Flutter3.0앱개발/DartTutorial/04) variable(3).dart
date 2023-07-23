void main() {
  String name1 = 'Hello';
  String name2 = 'World';
  
  print(name1 + ' ' + name2);
  print('${name1} ${name2}');
  print('$name1 $name2');
  
  // compile error
  // print('$name1.runtimeType $name2');
}
