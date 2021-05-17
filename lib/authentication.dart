import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:style_mania/signup.dart';
class Authentication extends StatefulWidget {
  @override
  _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends State<Authentication>  {
  GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool visible = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signInUser() {
    _auth.signInWithEmailAndPassword(email: emailController.value.text, password: passwordController.value.text)
        .then((value) async {
      var userObj = (await _firestore.collection("info").where("authId", isEqualTo: value.user.uid).get()).docs.first.data();
      print(">>> User Obj: " + userObj.toString());
      ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(new SnackBar(
        content: Text('User Signed In Successfully'),
        behavior: SnackBarBehavior.floating,
      ));
    })
        .catchError((error) {
      ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(new SnackBar(
        content: Text(error.message),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 6),
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
                    onPressed: signInUser,
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

                  ),
                SizedBox(height: 28,),
                RichText(
                       text: TextSpan(
                         text: "Don't Have An Account? ",
                         style: TextStyle(
                             fontSize: 20,
                             color: Colors.deepPurpleAccent
                         ),
                         children: <TextSpan>[
                           TextSpan(
                             text: "Sign Up",
                            style: TextStyle(
                               fontWeight: FontWeight.w600,
                               fontSize: 20,
                               color: Colors.deepPurpleAccent,

                             ),
                             recognizer: TapGestureRecognizer()
                               ..onTap = () {
                                 Navigator.of(context).pushReplacement(
                                     MaterialPageRoute(builder: (context) => Signup(),)
                                 );




                             }
                           )
                         ]
                       )
                  )




              ]
          ),
      ),
      ),
    );
  }
}