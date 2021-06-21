import 'package:flutter/material.dart';
import 'product.dart';

class SearchData extends SearchDelegate<String> {
  //final Product product;
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   // final myList = query.isEmpty ? products.length : products.where((p) => p.name.startsWith(query)).toList().length();
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  products[index].name,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  products[index].category,
                  style: TextStyle(color: Colors.grey),
                ),
                Divider()
              ],
            ),
          );
        });
  }
}
