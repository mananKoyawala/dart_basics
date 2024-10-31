void main() {
  // * Dart doesn't support method overloading but does overriding
  var noodles = MenuItem(title: "noodles", price: 9.99);
  var pizza = Pizza(
      toppings: ["mashrooms", "peppers"], title: "veg volcano", price: 15.99);

  print(noodles);
  print(pizza);
}

class MenuItem {
  final String title;
  final double price;

  MenuItem({required this.title, required this.price});

  void PrintMenuItem(MenuItem menu) {
    print('Today\'s menu is ${menu.title} and it\'s price is ${menu.price}');
  }

  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    // it will actully override toString() method called when print(noodles) will return 'Instance of MenuItem'
    return format();
  }
}

class Pizza extends MenuItem {
  final List<String> toppings;

  // Pizza({required this.toppings, required title, required price})
  //     : super(title: title, price: price);
  // * OR
  Pizza({required this.toppings, required super.title, required super.price});

  @override
  String format() {
    return '$title --> $price --> $toppings';
  }

  @override
  String toString() {
    // it will override toString method of MenuItem
    return '$title + $price + $toppings';
  }
}
