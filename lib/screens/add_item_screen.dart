import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  static const routeName = "/addItemScreen";

  const AddItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Favorite Thing'),
      ),
      body: const Center(
        child: Text('Form to add a new item will go here'),
      ),
    );
  }
}
