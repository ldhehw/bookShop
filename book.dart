class Book {
  int? id;
  String? name;
  String? author;
  String? printer;
  String? DOP;
  String? EV;
  int? pages;
  int price;

  void display() {
    print("name: $name.");
    print("author: $author.");
    print("printer: $printer.");
    print("date of publish: $DOP.");
    print("editor's version: $EV.");
    print("pages of book: $pages.");
    print("price: $printer.");
  }

  Book(this.id, this.name, this.author, this.printer, this.DOP, this.EV,
      this.pages, this.price);
  void displayBookInfo() {}
}
