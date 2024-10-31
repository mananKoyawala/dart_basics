void main() {
  final greeting = greet("mario", 25);
  print(greeting);
  final subjective = subject(age: 20);
  print(subjective);
}

// simple parametes
String greet(String name, int age) {
  return 'Hi, my name is $name and my age is $age.';
}

// named parameters
String subject({String? name, required int age}) {
  return 'Hi, I am $name and I am $age years old.';
}
