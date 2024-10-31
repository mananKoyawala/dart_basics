void main() {
  var variable = "hello";

  print(variable);

  final val1 = true;
  const val2 = true;
  // both's difference is that final is runtime constant and const is compiled time constant

  // string interpolation
  print('final key word ${val1} const variable ${val2}');
}
