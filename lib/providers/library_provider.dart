import 'package:flutter/material.dart';
import '../models/book.dart';
import '../models/user.dart';

class LibraryProvider extends ChangeNotifier {
  List<Book> books = [
    Book(title: "Sách 01"),
    Book(title: "Sách 02"),
    Book(title: "Sách 03"),
  ];

  List<User> users = [
    User(name: "Nguyen Van A"),
    User(name: "Tran Thi B"),
  ];

  void borrowBook(Book book) {
    book.isBorrowed = true;
    notifyListeners();
  }

  void returnBook(Book book) {
    book.isBorrowed = false;
    notifyListeners();
  }
}
