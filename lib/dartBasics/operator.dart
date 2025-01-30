void main() {
  // Operators - Arthematci, Logical, Equality, Assignment, conditional

  // Arthematic Operators - we are using basic mathematical operations purpose. +,-,*,/,%

  int a = 10;
  int b = 15;

  print(a + b); // 10 + 15
  print(a - b); // 10 - 15
  print(a * b);
  print(a / b);
  print(a % b);

  // Logical Operators -  || ,&& , !

  print((a < b) || (a > b)); // 10 < 15 || 10 > 15
  print((a < b) && (a > b));
  print(!(a < b));

  // Equality or Comparsion Operators - == ,!= , <, <=,>, >=

  print(a == b); // 10 == 15
  print(a != b); // 10 != 15
  print(a < b); // 10 < 15
  print(a <= b); // 10 < 15 or 10 = 15
  print(a > b);
  print(a >= b);

  // Assignment - =

  print(a = b);
  print(a);

  a += 2; // a = a + 2;
  a -= 3;
  a *= 3;
  a ~/= 2;
  a %= 3;

  // Conditional Operator = ?

  // Syntax = condition ? "" : ""

  if (a < b) {
    print("A is Smaller than B");
  } else {
    print("A is Bigger than B");
  }

  var c = a < b ? "A is Smaller than B" : "A is Bigger than B";
  print(c);

  // Optional

  final String? data;

  data = null;

  String d = data ?? "No Data";
  print(d);
}
