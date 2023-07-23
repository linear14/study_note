// dynamic >> 동적타입
// var >> 한 번 결정되면 변경 불가능
void main() {
  dynamic nameDynamic = 'DongHyun';
  var nameVar = 'DongHyun';
  
  nameDynamic = 2;
  // nameVar = 2; // compile error
}
