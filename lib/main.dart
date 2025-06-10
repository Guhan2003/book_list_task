import 'package:flutter/material.dart';
import 'package:task/screen/book_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List',
      home: BookList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
