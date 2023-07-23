void main() {
  bool result = 12 > 10 && 1 > 0;
  print(result); // true

  bool result2 = 12 > 10 && 1 < 0;
  print(result2); // false

  bool result3 = 12 > 10 || 1 > 0;
  print(result3); // true

  bool result4 = 12 > 10 || 1 < 0;
  print(result4); // true
}
