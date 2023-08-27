import 'book.dart';
import 'person.dart';
import 'storage.dart';

class User extends Person {
  late Wallet wallet;
  late shopping_cart shoppingCart;
  User(String firstName, String lastName, int age, Gender gender)
      : super(firstName, lastName, age, gender) {
    print("user created");
    wallet = new Wallet();
    shoppingCart = new shopping_cart();
  }

  void user_display() {
    print("fullname : ${super.fullName()}");
    print("sir name : ${super.lastName}");
    print(super.gender);

    print("age : ${super.age}");
    print("date of join : ${super.createAt}");
  }
}

class Wallet {
  double balance = 0;

  void addMoney(double amount) {
    balance += amount;
    print("Added $amount to the wallet. New balance: $balance");
  }
}

class shopping_cart {
  List<Book> booksInSP = [];

  bool availabilityCheck(List<Book> booksInSP, Storage storage) {
    int counter = 0;
    while (counter + 1 < booksInSP.length) {
      if (storage.stockCheck(booksInSP[counter]) == false) {
        print("sorry the book ${booksInSP[counter]} is not available");
        return false;
      }
      counter++;
    }
    return true;
  }

  double price(List<Book> booksInSP, Storage storage) {
    if (!availabilityCheck(booksInSP, storage)) return -1;
    int counter = 0;
    double ABS = 0;
    while (counter < booksInSP.length) {
      ABS += booksInSP[counter].price;
      counter++;
    }
    return ABS;
  }
}
