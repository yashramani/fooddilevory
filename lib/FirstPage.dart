import 'dart:io';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddilevory/CategoryModel.dart';
import 'package:fooddilevory/RecipeModel.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var imageSlider = Container(
    height: 250.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      dotColor: Colors.deepOrange.withOpacity(0.8),
      dotSize: 5.5,
      dotSpacing: 16.0,
      dotBgColor: Colors.transparent,
      showIndicator: true,
      overlayShadow: true,
      overlayShadowColors: Colors.white.withOpacity(0.9),
      overlayShadowSize: 0.9,
      images: [
        AssetImage('assets/slider1.png'),
        AssetImage('assets/slider2.png'),
        AssetImage('assets/slider3.png'),
        AssetImage('assets/slider4.png'),
        AssetImage('assets/slider5.png')
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Food Delivery'),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/drawer.png'))),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Cart'),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                imageSlider,
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Category',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 120.0,
                  width: double.maxFinite,
                  child: ListView.builder(
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100.0,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.blue, width: 1)),
                          child: Center(
                            child: Text(
                              category[index].cat_name,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Recipe List',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 500.0,
                  child: ListView.builder(
                      itemCount: recipeList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          height: 300.0,
                          width: double.maxFinite,
                          child: Column(
                            children: <Widget>[
                              recipeList[index].img_url,
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 20.0, left: 20.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      recipeList[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    Spacer(),
                                    Text(recipeList[index].price)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          )),
        ),
        onWillPop: () {
          exit(0);
        });
  }
}
