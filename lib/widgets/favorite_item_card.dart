import 'package:app/models/favorite_item.dart';
import 'package:app/screens/details_screen.dart';
import 'package:flutter/material.dart';

class FavoriteItemCard extends StatelessWidget {
  final FavoriteItem item;

  const FavoriteItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.title),
        onTap: () {
          Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: item,
          );
        },
      ),
    );
  }
}
