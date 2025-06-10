import '../model/book_model.dart';

class BookController {
  int bookCount = 0;
  int authorCount = 0;
  final List<Book> _books = [];
  List<Book> get books => _books;
  void addBook() {
    bookCount++;
    authorCount++;
    _books.add(Book(title: 'Book $bookCount', author: 'Author $authorCount'));
  }
}
