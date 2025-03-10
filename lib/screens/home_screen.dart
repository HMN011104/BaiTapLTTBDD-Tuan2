import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/library_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final library = Provider.of<LibraryProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Hệ thống Quản lý Thư viện")),
      body: Column(
        children: [
          Text("Nhân viên"),
          TextField(
            controller: TextEditingController(text: library.users[0].name),
          ),
          SizedBox(height: 8),
          Text("Danh sách sách"),
          Expanded(
            child: ListView.builder(
              itemCount: library.books.length,
              itemBuilder: (context, index) {
                final book = library.books[index];
                return CheckboxListTile(
                  title: Text(book.title),
                  value: book.isBorrowed,
                  onChanged: (value) {
                    library.borrowBook(book.id);
                  },
                );
              },
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Thêm")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Quản lý"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "DS Sách"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Nhân viên"),
        ],
      ),
    );
  }
}
