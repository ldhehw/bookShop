import 'book.dart';

class Storage {
  List<Book> booksList = [];

  bool stockCheck(Book book) {
    bool check = false;
    booksList.forEach((book_item) {
      if (book_item.id == book.id) {
        check = true;
        return;
      }
    });
    return check;
  }

  int amount(Book book) {
    int counter = 0;
    booksList.forEach((book_item) {
      if (book_item.id == book.id) counter++;
    });
    return counter;
  }

  void addBook(Book book) {
    booksList.add(book);
  }

  void displayAllBooks() {
    Set new_books = booksList.toSet();
    for (var book in new_books) {
      book.display();
      print("amount : ${amount(book)} ");
      print('---------------------');
    }
  }
}
