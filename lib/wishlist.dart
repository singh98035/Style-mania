import 'package:flutter/material.dart';
class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        child : Text(
          " WishList Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
            color: Colors.black
          ),
        ),
      ),
    );
  }
}