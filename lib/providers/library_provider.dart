import 'package:flutter/material.dart';
import '../models/book.dart';
import '../models/user.dart';

class LibraryProvider with ChangeNotifier {
  List<Book> books = [
    Book(id: "1", title: "Sách 01"),
    Book(id: "2", title: "Sách 02"),
  ];

  List<User> users = [
    User(id: "1", name: "Nguyen Van A"),
  ];

  void borrowBook(String bookId) {
    final book = books.firstWhere((b) => b.id == bookId);
    book.isBorrowed = !book.isBorrowed;
    notifyListeners();
  }

  void addBook(String title) {
    books.add(Book(id: DateTime.now().toString(), title: title));
    notifyListeners();
  }

  void addUser(String name) {
    users.add(User(id: DateTime.now().toString(), name: name));
    notifyListeners();
  }
}

