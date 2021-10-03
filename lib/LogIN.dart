import 'package:flutter/material.dart';
import 'package:fooddilevory/FirstPage.dart';

class LogIN extends StatefulWidget {
  @override
  _LogINState createState() => _LogINState();
}

class _LogINState extends State<LogIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/loginpage.png'), fit: BoxFit.cover)),
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
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Text(
                    'Google Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Text(
                    'FaceBook Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
            )
          ],
        ),
      )),
    );
  }
}
