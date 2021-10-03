import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fooddilevory/LogIN.dart';
import 'package:fooddilevory/SignUp.dart';

class LoginOrSignUp extends StatefulWidget {
  @override
  _LoginOrSignUpState createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: SafeArea(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/loginsignup.png'),
                    fit: BoxFit.cover)),
            child: Center(
              heightFactor: 10.0,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 280.0,
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 50.0,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                      height: 50.0,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIN()));
                    },
                  )
                ],
              ),
            ),
          )),
        ),
        onWillPop: () {
          exit(0);
        });
  }
}
