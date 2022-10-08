import 'dart:ffi';

import 'package:count_ai/screen/NavigationView/BottomNavigationView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Count",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),
                        ),
                        Text("AI",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 10,
                  ),
                  Text("Powered by",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 13
                  ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    padding: EdgeInsets.only(left: 10,top: 5, right: 10,bottom: 5),
                    child: Image(image: AssetImage("assets/image/facegenie.png"),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.red,
                        width: 1,
                        style: BorderStyle.solid
                      )
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                width: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                    child: new Theme(data: new ThemeData(
                      primaryColor: Colors.red,
                    ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Username / Email',
                            hintText: 'Username / Email',
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.red)
                            ),

                          ),

                        ),)
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                      child: new Theme(data: new ThemeData(
                        primaryColor: Colors.red,
                      ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.red)
                            ),

                          ),

                        ),)
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: new GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  BottomNavigationView()),);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),

                  )
                ],
              ),
               Expanded(
                 child: Align(
                   alignment:FractionalOffset.bottomCenter,
                   child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("A product from",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 13
                            ),
                          ),
                          SizedBox(
                            height: 5,
                            width: 10,
                          ),
                          Container(
                            width: 150,
                            height: 40,
                            padding: EdgeInsets.only(left: 10,top: 5, right: 10,bottom: 5),
                            child: Image(image: AssetImage("assets/image/logo.png"),),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.red,
                                    width: 1,
                                    style: BorderStyle.solid
                                )
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                        ],
                    ),
                 ),
               ),

            ],
          ),
        ),
    );
  }
}
