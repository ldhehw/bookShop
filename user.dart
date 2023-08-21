import 'person.dart';

class User extends Person {
  late Wallet wallet;
  User(String firstName, String lastName, int age, Gender gender)
      : super(firstName, lastName, age, gender) {
    print("user created");
    wallet = new Wallet();
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
