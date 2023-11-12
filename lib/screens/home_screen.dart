import 'package:app/models/favorite_item.dart';
import 'package:app/screens/add_item_screen.dart';
import 'package:app/widgets/favorite_item_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";

  final List<FavoriteItem> items = [
    FavoriteItem(title: 'Pizza', description: 'Cheesy and delicious'),
    // Add more hardcoded items
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite Things'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return FavoriteItemCard(item: items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddItemScreen.routeName);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
