import 'person.dart';
import 'storage.dart';
import 'book.dart';
import 'user.dart';
import 'transaction.dart';

void main() {
  Book COETR = new Book(1, 'Chronicles of the Ethereal Realm',
      'Victoria Riversong', 'sib sabz', '1401', '24', 564, 80000);
  Book harryPotter = new Book(2, 'Harry potter', 'Scholastic Corporation',
      "Joe lad", '7/8/1980', "658569", 800, 80000);
  Book walkingDead = new Book(3, 'Walking dead', 'Jane Smith', "Will smith",
      '8/9/1965', "85867953", 650, 45000);
  Book harryNotPotter = new Book(4, 'Harry not potter', 'Alice Johnson',
      "Imagine dragons", '6/9/1969', "2563482", 200, 20000);
//---------------------------------------------------------------------
  Storage myStorage = Storage();
  myStorage.addBook(COETR);
  myStorage.addBook(harryPotter);
  myStorage.addBook(harryPotter);
  myStorage.addBook(walkingDead);
  myStorage.addBook(walkingDead);
  myStorage.addBook(walkingDead);
  myStorage.addBook(harryNotPotter);
  myStorage.addBook(harryNotPotter);
  myStorage.addBook(harryNotPotter);
  myStorage.addBook(harryNotPotter);
  myStorage.addBook(COETR);
  myStorage.addBook(COETR);
  myStorage.addBook(COETR);
  //myStorage.displayAllBooks();
//----------------------------------------------------------------------
  Transaction transaction = new Transaction();
  User keivan = new User("keivan", "koupah", 28, Gender.male);
  keivan.wallet.addMoney(1500000);
  keivan.shoppingCart.booksInSP.add(COETR);
  keivan.shoppingCart.booksInSP.add(harryNotPotter);
  keivan.
      //keivan.wallet.balance = transaction.transactionFunction(myStorage, keivan, keivan.shoppingCart);
      // User kiarash = new User("Kiarash", "Mahani", 22, Gender.male);
      // kiarash.shoppingCart.booksInSP.add(harryNotPotter);
      // kiarash.wallet.addMoney(1000000000);
      // kiarash.wallet.balance =
      //     transaction.transactionFunction(myStorage, kiarash, kiarash.shoppingCart);

      transaction
      .printTransactions();
}
