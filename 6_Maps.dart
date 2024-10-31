void main() {
  // if {5:5} then map if {5,5} then it is set
  var planets = {
    "first": "mercury",
    1: "age",
    "age": 20,
  };

  Map<String, dynamic> list = {"hello": 1, "new": true, "babo": "jiHangSu"};

  print(list);
  print(list["new"]);
  print(list.containsKey("babo"));
  print(list.containsValue("babo"));
  list.remove("hello");
  print(list);
}
