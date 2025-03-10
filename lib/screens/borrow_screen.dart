import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/book.dart';
import '../providers/library_provider.dart';

class BorrowScreen extends StatelessWidget {
  final Book book;

  BorrowScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LibraryProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Mượn Sách")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bạn có muốn mượn sách '${book.title}' không?"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Xác nhận"),
              onPressed: () {
                provider.borrowBook(book);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
