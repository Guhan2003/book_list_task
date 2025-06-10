import 'package:flutter/material.dart';
import 'package:task/controller/book_controller.dart';

class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  final BookController _bookController = BookController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bookController.addBook();
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Available Books'),
        backgroundColor: Colors.amber,
      ),
      body: _bookController.books.isEmpty
          ? Center(child: Text('No books Found'))
          : ListView.builder(
              itemCount: _bookController.books.length,
              itemBuilder: (context, index) {
                final book = _bookController.books[index];
                return Column(
                  children: [
                    ListTile(
                      title: Text(book.title),
                      subtitle: Text(book.author),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
    );
  }
}
