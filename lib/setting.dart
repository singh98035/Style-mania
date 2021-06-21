import 'package:flutter/material.dart';
class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
       
     ),
      body: Container(
        child : Text(
          " Setting Screen",
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