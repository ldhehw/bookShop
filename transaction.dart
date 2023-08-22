import 'user.dart';
import 'storage.dart';
import 'book.dart';

class Transaction {
  List<TransactionItem> trancs = [];

  void printTransactions() {
    if (trancs.isEmpty) {
      print("No transactions recorded.");
    } else {
      print("List of Transactions:");
      for (var i = 0; i < trancs.length; i++) {
        print("Transaction ${i + 1}:");
        print("  Date: ${trancs[i].date}");
        print("  User: ${trancs[i].user.fullName()}");
        print("  books:");
        for (var book in trancs[i].books) {
          print("  ${book.name}");
        }
        print("------");
      }
    }
  }

  double transactionFunction(Storage storage, User user, List<Book> books) {
    int counter = 0;
    // print(books.length.toInt());
    // return user.wallet.balance;
    while (counter + 1 < books.length) {
      if (storage.stockCheck(books[counter]) == false) {
        print("sorry the book ${books[counter]} is not available");
        return user.wallet.balance;
      }
      counter++;
    }
    counter = 0;
    double ABS = 0;
    while (counter < books.length) {
      ABS += books[counter].price;
      counter++;
    }
    counter = 0;
    if (user.wallet.balance >= ABS) {
      while (counter + 1 < books.length) {
        storage.booksList.remove(books[counter]);
        counter++;
      }
      print("the total amount is $ABS");
      print("remaining money in your wallet is ${user.wallet.balance - ABS}");
      trancs.add(new TransactionItem(books, user, DateTime.now()));
      return user.wallet.balance - ABS;
    } else {
      print(
          "you do not have enough money, the total amount is $ABS and you have ${user.wallet.balance}");
      return user.wallet.balance;
    }
  }
}

class TransactionItem {
  List<Book> books;
  User user;
  DateTime date;
  TransactionItem(this.books, this.user, this.date);
}
