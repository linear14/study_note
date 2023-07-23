// final, const 둘 다 값을 바꾸지 못한다.
void main() {
  final String nameFinal = 'DongHyun';
  final nameFinal2 = 'DongHyun';
  // nameFinal = 'DH'; // compile error
  
  const String nameConst = 'DongHyun';
  const nameConst2 = 'DongHyun';
  // nameConst = 'DH'; // compile error
  
  
  // what's difference?
  // final >> 빌드타임에 해당 값을 몰라도 됨
  // const >> 빌드타임에 해당 값을 알고 있어야 됨
  final DateTime now1 = DateTime.now();
 
  // compile error
  // const DateTime now2 = DateTime.now();
}
