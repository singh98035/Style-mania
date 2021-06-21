import 'package:flutter/material.dart';
class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child : Text(
          " Category Screen",
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