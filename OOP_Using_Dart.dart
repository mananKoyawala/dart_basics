void main() {
  Problem3();
}

void Problem3() {
  /*
  Problem 3: Banking System
  Concepts: Encapsulation, Inheritance, and Polymorphism.

  Build a simple banking system with the following requirements:

  Create an abstract Account class with a protected balance property and methods for deposit and withdraw.
  Create two subclasses: SavingsAccount and CurrentAccount.
  In SavingsAccount, ensure there’s a withdrawal limit.
  In CurrentAccount, allow overdraft up to a certain limit.
  Use polymorphism to create different account types and perform deposits and withdrawals.
  */

  SavingsAccount savingsAccount = SavingsAccount();
  savingsAccount.deposit(5000);
  CurrentAccount currentAccount = CurrentAccount();
  currentAccount.deposit(4000);

  savingsAccount.withdraw(100);
  currentAccount.withdraw(1000);
  currentAccount.withdraw(780);
  savingsAccount.withdraw(400);
}

abstract class Account {
  double _balance = 0;
  deposit(double amount);
  withdraw(double amount);
}

class SavingsAccount extends Account {
  double limit = 100;

  double get balance => _balance;

  @override
  deposit(double amount) {
    _balance += amount;
    print('\n$amount is deposit in Savings account');
  }

  @override
  withdraw(double amount) {
    // minimum 200 balance is required
    if ((_balance - amount) >= limit) {
      _balance -= amount;
      print('$amount is withdraw from Savings account and $_balance left');
      return;
    }
    print('There is no sufficent balance in Savings account for withdrawal.');
  }
}

class CurrentAccount extends Account {
  double limit = 2000;

  double get balance => _balance;

  @override
  deposit(double amount) {
    _balance += amount;
    print('\n$amount is deposit in Current account');
  }

  @override
  withdraw(double amount) {
    // minimum 2000 balance is required
    if ((_balance - amount) >= limit) {
      _balance -= amount;
      print('$amount is withdraw from Current account and $_balance left');
      return;
    }
    print('There is no sufficent balance in Current account for withdrawal');
  }
}

void Problem2() {
  /*
  Problem 2: Shape Area Calculator
  Concepts: Polymorphism and Abstraction.

  Design a system to calculate the area of different shapes:

  Create an abstract Shape class with a method calculateArea().
  Implement Circle and Rectangle classes that extend Shape.
  For Circle, calculate the area using π * radius^2.
  For Rectangle, calculate the area using width * height.
  In the main function, create instances of these shapes and call calculateArea() for each one.
  */

  Circle circle = Circle(10);
  circle.calculateArea();
  Rectangle rectangle = Rectangle(10, 5);
  rectangle.calculateArea();
}

abstract class Shape {
  static const pi = 3.14; // access uisng Shape.pi
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    double area = Shape.pi * radius * radius;
    print('Area of Circle with Radius : $radius is $area');
    return area;
  }
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle(this.height, this.width);

  @override
  double calculateArea() {
    double area = height * width;
    print('Area of Rectangle with Hight : $height and Width : $width is $area');
    return area;
  }
}

void Problem1() {
/*
  Problem 1: Library System
  Concepts: Classes, Objects, Encapsulation, and Inheritance.
  
  Create a simple library management system with the following requirements:
  
  Implement a Book class with private fields for title, author, and availability status.
  Create methods to borrow and return the book. Only allow borrowing if the book is available.
  Create a Library class that can store a list of books.
  Add methods to add new books, list all books, and display only available books.
*/

  // crate library
  Library library = Library();

  // add books
  library.addBook(Book('Dart for Beginners', 'John Doe'));
  library.addBook(Book('Flutter in Action', 'Jane Smith'));
  library.addBook(Book('Effective Dart', 'Alex Brown'));

  // List all books
  library.listAllBooks();

  // Borrow a book
  Book? book = library.findBookByTitle('Dart for Beginners');
  if (book != null) {
    print(book.borrowBook());
  }

  // List all available books
  library.listAllAvailableBooks();

  // return a book
  if (book != null) {
    print(book.returnBook());
  }

  // List all available books
  library.listAllAvailableBooks();
}

class Book {
  String title;
  String author;
  bool _isAvailable;

  Book(this.title, this.author) : _isAvailable = true;

  bool get isAvailable =>
      _isAvailable; // helps to access isAvailable outside the class

  String borrowBook() {
    if (_isAvailable) {
      _isAvailable = false;
      return '\nYou have successfully borrowed $title.';
    } else {
      return '\n$title currently borrowed.';
    }
  }

  String returnBook() {
    _isAvailable = true;
    return '\nYou have returned $title.';
  }

  String getDetails() {
    return '\nTitle : $title, Author : $author, Available : ${_isAvailable ? 'Yes' : 'No'}';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('\nBook ${book.title} by ${book.author} is added into Library.');
  }

  void listAllBooks() {
    print('\nAll books are in the Library.');
    for (Book book in books) {
      print('Book ${book.title} by ${book.author}');
    }
  }

  void listAllAvailableBooks() {
    print('\nAll books are in the Library.');
    for (Book book in books.where((book) => book._isAvailable == true)) {
      print('Book ${book.title} by ${book.author}');
    }
  }

  Book? findBookByTitle(String title) {
    for (Book book in books) {
      if (book.title == title) {
        return book;
      }
    }
    print('\n$title book is not found');
    return null;
  }
}
