// nullable >> null 가능
// non-nullable >> null 불가능
void main() {
  String name1 = 'DongHyun';
  // name1 = null; // compile error
  
  String? name2 = 'DongHyun';
  name2 = null;
  
  // Non-null assertion operator
  // someFuntion(name2!);
}
