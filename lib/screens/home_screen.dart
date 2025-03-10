import 'package:flutter/material.dart';
import 'book_list_screen.dart';
import 'user_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hệ thống Quản lý Thư viện")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("Quản lý Sách"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BookListScreen()),
            ),
          ),
          ElevatedButton(
            child: Text("Quản lý Người dùng"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UserListScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
