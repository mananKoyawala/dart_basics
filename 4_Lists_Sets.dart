void main() {
  // * List
  var list = [10, 20, 30, 40, 50];
  list.add(50);

  List<String> list2 = ['a', 'b', 'c', 'ddd'];

  print(list2.elementAt(1));
  print(list2[3]);
  list.remove(10); // only deletes first occuring element
  print(list);
  list.removeLast();
  print(list);
  list.removeAt(2);
  print(list);

  list.removeRange(1, 3);
  list.removeWhere((element) => element == 50);
  print(list);

  print(list.length);

  print(list2);
  list2.shuffle();
  print(list2);

  // * Set
  Set<String> names = {
    "mario",
    "luigi",
    "peach",
    "mario"
  }; // it will ignore duplicate values
  names.add("browser");
  names.add("peach");
  names.remove("mario");
  print(names.length);
  names.removeAll({'browser', 'peacc'});
  print(names);

  // *            List               VS               Sets
  // -- conatins duplicate elements  -- doesn't contains duplicate elements
  // -- element accessed by index    -- doens't have any index
  // -- slower                       -- faster
  // -- maintain insertion order     -- doesn't maintain insertaion order(dependent on linkedhashset)
}
