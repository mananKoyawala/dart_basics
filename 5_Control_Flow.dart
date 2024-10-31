void main() {
  List<String> names = ["raj", "mahesh", "pinkesh", "ajay", "lalan"];
  // for loop
  for (int i = 0; i < 10; i++) {
    print(i + 1);
  }

  // for in loop
  for (String name in names) {
    if (name == "ajay") {
      print("ajay was skipped");
    } else {
      print(name);
    }
  }
}
