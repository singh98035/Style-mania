import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Authentication extends StatefulWidget {
  @override
  _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends State<Authentication>  {
  GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  bool visible = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  saveValuesToFirebase() {
    print(">>> Email: " + emailController.value.text);

    Map<String, dynamic> obj = {
      "docId": _firestore.collection("info").doc().id,
      "email": emailController.value.text
    };
    _firestore.collection("info").doc(obj['docId']).set(obj, SetOptions(merge: true))
        .then((value) {
      print(">>> Values Added Successfully");
      ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(new SnackBar(
        content: Text('Values Added Successfully', style: TextStyle(fontSize: 32),),
        behavior: SnackBarBehavior.floating,
      ));
    });
}
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        key: _scaffoldKey,
          backgroundColor: Colors.deepPurpleAccent,
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
              top: 72,
              bottom: 28,
              left: 16,
              right: 16
               ),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
             color: Colors.white,
    ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
              SvgPicture.asset(
              "assets/login.svg",
              height: 250,
              width: 230,
              fit: BoxFit.contain,
            ),
                SizedBox(height: 16,),
                Text(
                  'LogIn',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                      color: Colors.deepPurpleAccent
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  'Welcome to Style Mania',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.grey[400]
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8,),

                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, size: 22, color: Colors.deepPurpleAccent,),
                      labelStyle: TextStyle(
                          fontSize: 18
                      ),
                      labelText: 'Email'
                  ),
                ),
                SizedBox(height: 4,),
                TextFormField(
                  obscureText: !visible,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, size: 22, color: Colors.deepPurpleAccent,),
                      labelStyle: TextStyle(
                          fontSize: 18
                      ),
                      suffixIcon: IconButton(
                        icon: !visible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                        onPressed: () {
                          visible = !visible;
                        },
                        tooltip: !visible ? "Show Password" : "Hide Password",
                      ),
                      labelText: 'Password'
                  ),
                ),
                SizedBox(height: 32,),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: saveValuesToFirebase,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 22,
                              fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.deepPurpleAccent
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    ),
                  ),
                )
              ]
          ),
      ),
      ),
    );
  }
}