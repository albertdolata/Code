class Book {
  final int id;
  final double price;
  final String title;

  Book(this.id, this.price, this.title);

  @override
  String toString() {
    return 'Title: $title, Price: $price PLN, ID: $id ';
  }
}