import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_mania/authentication.dart';
class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Authentication(),)
      );
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max ,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: const <Widget> [
                Icon(Icons.shopping_bag,
                size: 400,),
                Text(
                  'Style Mania',
                  style: TextStyle(fontWeight: FontWeight.w700),

                )
          ],
        ),


      ),
    );



  }

}