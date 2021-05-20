import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:style_mania/authentication.dart';
class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Authentication(),)
      );
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max ,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: [
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/welcome.svg",
              height: size.height * 0.28,
            ),
                Text(
                  'Style Mania',
                  style: TextStyle(
                      fontSize: 30,
                       fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),


                )
          ],
        ),


      ),
    );



  }

}