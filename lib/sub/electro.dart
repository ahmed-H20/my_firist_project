import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';
import '../main.dart';
import 'dart:ui';


import 'package:flutter/cupertino.dart';

import 'package:flutter/rendering.dart';



class Electro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:
          BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
                image: AssetImage("assets/images/electronics.jpg"),
                alignment: Alignment.topCenter
            ),
          ),
          child: Padding(
              padding: EdgeInsets.only(left: 10, top: 50, right: 10),
              child: Column(
                  children:<Widget>[
                    Row(
                      children:<Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back, color: Colors.white,),
                          onPressed: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 140),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child:ListView(
                                    children: <Widget>[
                                      Text("Lectures",style: kTitleTextStyle),
                                      SizedBox(height: 30),
                                      //   physics
                                      InkWell(
                                          child:Container(
                                              child: Material(
                                                color: Colors.black12,
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(24),
                                                shadowColor: Color(0x802196F3),
                                                child:Container(
                                                  margin: EdgeInsets.symmetric(vertical: 20),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20, vertical: 16),
                                                  alignment: Alignment.center,
                                                  child: Text('PLAYLIST-1',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                    ),
                                                  ),
                                                ),
                                              )
                                          ),
                                        onTap: () => launch('')
                                      ),

                                      SizedBox(height: 20),
                                      InkWell(
                                          child:Container(
                                              child: Material(
                                                color: Colors.black12,
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(24),
                                                shadowColor: Color(0x802196F3),
                                                child:Container(
                                                  margin: EdgeInsets.symmetric(vertical: 20),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20, vertical: 16),
                                                  alignment: Alignment.center,
                                                  child: Text('PLAYLIST-2',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                    ),
                                                  ),
                                                ),
                                              )
                                          )
                                      ),




                                    ],
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                  ]
              )
          )
      ),
    );





  }
}


// InkWell(
// child:Container(
// child: Material(
// color: Colors.white,
// elevation: 14,
// borderRadius: BorderRadius.circular(24),
// shadowColor: Color(0x802196F3),
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 20),
// padding: EdgeInsets.symmetric(
// horizontal: 20, vertical: 16),
// alignment: Alignment.center,
// child: Text('SHA-lectures',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.black,
// fontSize: 25,
// ),
// ),
// ),
// ),
// ),
// ),
// SizedBox(height: 20),
// InkWell(
// child:Container(
// child: Material(
// color: Colors.white,
// elevation: 14,
// borderRadius: BorderRadius.circular(24),
// shadowColor: Color(0x802196F3),
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 20),
// padding: EdgeInsets.symmetric(
// horizontal: 20, vertical: 16),
// alignment: Alignment.center,
// child: Text('SHA-lectures',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.black,
// fontSize: 25,
// ),
// ),
// ),
// ),
// ),
// ),
//
// InkWell(
// child:Container(
// child: Material(
// color: Colors.white,
// elevation: 14,
// borderRadius: BorderRadius.circular(24),
// shadowColor: Color(0x802196F3),
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 20),
// padding: EdgeInsets.symmetric(
// horizontal: 20, vertical: 16),
// alignment: Alignment.center,
// child: Text('SHA-lectures',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.black,
// fontSize: 25,
// ),
// ),
// ),
// ),
// ),
// )


