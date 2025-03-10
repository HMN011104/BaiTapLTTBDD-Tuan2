import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/library_provider.dart';
import '../models/book.dart';
import 'borrow_screen.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LibraryProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Danh sách Sách")),
      body: ListView.builder(
        itemCount: provider.books.length,
        itemBuilder: (context, index) {
          final book = provider.books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.isBorrowed ? "Đã mượn" : "Có sẵn"),
            trailing: book.isBorrowed
                ? null
                : ElevatedButton(
                    child: Text("Mượn"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BorrowScreen(book: book),
                        ),
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
