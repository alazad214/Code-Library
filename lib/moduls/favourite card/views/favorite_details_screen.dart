import 'package:code_library/moduls/favourite%20card/utils/fav_item.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  final FavItem item;

  const DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              'Description: ${item.title}', // Assuming title is used as description for now
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
