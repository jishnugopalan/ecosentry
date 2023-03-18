import 'dart:ui';

import 'package:ecosentry/Login.dart';
import 'package:flutter/material.dart';

class UserSignUp3 extends StatefulWidget {
  const UserSignUp3({super.key});

  @override
  State<UserSignUp3> createState() => _UserSignUp3State();
}

class _UserSignUp3State extends State<UserSignUp3> {
  DateTime _dateTime = DateTime.now();
 void _showDatePicker(){
 showDatePicker(
  context: context,
   initialDate: DateTime.now(), 
   firstDate: DateTime(2000), 
   lastDate: DateTime(2025)

   ).then((value){
    setState(() {
       _dateTime=value!;
    });
   });
 }
 String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 53, 87, 33)),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               const SizedBox(
              height: 100,
            ),
            
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Password",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             
             const SizedBox(
              height: 60,
            ),
            
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Confirm Password",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Re-enter Password",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             
           Expanded(child: 
          Align(
              alignment: Alignment.center,
               child: MaterialButton(
                color: Color.fromARGB(255, 53, 87, 33),
                  onPressed: (() {
                    
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
          
                  }),
                  
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  
                  child: Text("Register"),
                  
                  
                  ),
               ),
             ),
          )
            
          ]
        ),
      )
    );
  }
}