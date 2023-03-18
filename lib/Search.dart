import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:home_page/contrains.dart';

//import 'botton_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 62, 59, 59),
        ),
        body: ListView(children: [
          Container(

            height: 500,
            child: Stack(children: <Widget>[
              Container( 
                padding: EdgeInsets.only(top: 30,left: 40,right: 40),
               // padding: EdgeInsets.symmetric(horizontal: 40),
                child:  SizedBox(
                  height: 25,
          child: Row(
            children: [
              
              Container(
             
                child: TextField(
                  
                  decoration: InputDecoration(
                    
                    filled: true, 
                              fillColor: Colors.white, 
                    border: OutlineInputBorder(
                      
                              borderRadius: BorderRadius.circular(36),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(36),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )
                      
                 )
              ),
              
            
                ),
                height: 45.0,
                width: 300.0,
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                // ignore: prefer_const_literals_to_create_immutables
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 62, 59, 59),
                          blurRadius: 10,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.circular(20.0)),
              )
            ],
          )
),
                  height: 150 - 27,
                  width: 500,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 62, 59, 59),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                    ),
                  )
                  )
            ]),
          ),
          
        ]),
       // bottomNavigationBar: BottomNavigationWidgets()
       );
  }
}