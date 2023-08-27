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

  double transactionFunction(Storage storage, User user, shopping_cart SP) {
    int counter = 0;
    if (SP.price(shopping_cart().booksInSP, storage) == -1) return 0;
    if (user.wallet.balance >= SP.price(shopping_cart().booksInSP, storage)) {
      while (counter + 1 < SP.booksInSP.length) {
        storage.booksList.remove(SP.booksInSP[counter]);
        counter++;
      }
      print(
          "the total amount is ${SP.price(shopping_cart().booksInSP, storage)}");
      print(
          "remaining money in your wallet is ${user.wallet.balance - SP.price(shopping_cart().booksInSP, storage)}");
      trancs.add(new TransactionItem(SP.booksInSP, user, DateTime.now()));
      return user.wallet.balance - SP.price(shopping_cart().booksInSP, storage);
    } else {
      print(
          "you do not have enough money, the total amount is ${SP.price(shopping_cart().booksInSP, storage)probl} and you have ${user.wallet.balance}");
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
