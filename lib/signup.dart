import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Signup extends StatefulWidget {
  @override
  _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends State<Signup>  {
  GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool visible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  saveValuesToFirebase() async {
    print(">>> Name: " + nameController.value.text);
    print(">>> Email: " + emailController.value.text);
    print(">>> Phone: " + phoneController.value.text);

    Map<String, dynamic> obj = {
      "docId": _firestore.collection("User_data").doc().id,
      "name": nameController.value.text,
      "email": emailController.value.text,
      "phone": phoneController.value.text,
      "authId": await createUserWithEmailPassword(),
      "createdOn": FieldValue.serverTimestamp()
    };

    _firestore.collection("User_data").doc(obj['docId']).set(obj, SetOptions(merge: true))
        .then((value) {
      print(">>> Values Added Successfully");
      ScaffoldMessenger.of(_scaffoldKey.currentContext).showSnackBar(new SnackBar(
        content: Text('Values Added Successfully', style: TextStyle(fontSize: 32),),
        behavior: SnackBarBehavior.floating,
      ));
    });

  }
  createUserWithEmailPassword() async {
    return (await _auth.createUserWithEmailAndPassword(email: emailController.value.text, password: passwordController.value.text)).user.uid;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/signup.svg",
                  height: size.height * 0.28,
                ),
                SizedBox(height: 3,),
                TextFormField(
                     controller: nameController,
                     keyboardType: TextInputType.text,
                     decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_rounded, size: 22, color: Colors.deepPurpleAccent,),
                      labelStyle: TextStyle(
                        fontSize: 18
                     ),
                     labelText: 'Full Name'
                   ),
                 ),
                SizedBox(height: 3,),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone, size: 22, color: Colors.deepPurpleAccent,),
                      labelStyle: TextStyle(
                          fontSize: 18
                      ),
                      labelText: 'Phone'
                  ),
                ),
                SizedBox(height: 3,),
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
                SizedBox(height: 3,),
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
                SizedBox(height: 3,),
                TextFormField(
                  obscureText: !visible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, size: 22, color: Colors.deepPurpleAccent,),
                      labelStyle: TextStyle(
                          fontSize: 18
                      ),

                      labelText: 'Confirm Password'
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: saveValuesToFirebase,
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                          fontSize: 20,
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