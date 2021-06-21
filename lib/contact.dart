import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Contact",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        child : Text(
          " Contact Screen",
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