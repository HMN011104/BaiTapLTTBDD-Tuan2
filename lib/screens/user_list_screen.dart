import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/library_provider.dart';

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LibraryProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Danh sách Người dùng")),
      body: ListView.builder(
        itemCount: provider.users.length,
        itemBuilder: (context, index) {
          final user = provider.users[index];
          return ListTile(title: Text(user.name));
        },
      ),
    );
  }
}
