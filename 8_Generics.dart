void main() {
  Collection collection1 = Collection<String>(
      "food items", ["pizza", "noodles", "pasta", "burger", "hot-dog"]);
  Collection collection2 = Collection<int>("days", [1, 5, 9, 7, 2, 4, 8]);

  String food = collection1.randomItem();
  int day = collection2.randomItem();

  print(food);
  print(day);
}

class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();
    return data[0];
  }
}
