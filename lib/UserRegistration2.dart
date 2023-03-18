import 'dart:ui';

import 'package:ecosentry/Login.dart';
import 'package:ecosentry/UserRegistration3.dart';
import 'package:flutter/material.dart';

class UserSignUp2 extends StatefulWidget {
  const UserSignUp2({super.key});

  @override
  State<UserSignUp2> createState() => _UserSignUp2State();
}

class _UserSignUp2State extends State<UserSignUp2> {
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
              height: 20,
            ),
            Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Country",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Country",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),
            Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "State",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter State",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "District",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter District",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "City",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter City",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),
            Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Landmark",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Landmark",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),
           Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "House Name",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Housename",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),
           Expanded(child: 
            TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Postal/Zip Code",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Pincode",
                                  
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33))
                                  )),
             ),
             ),
             const SizedBox(
              height: 30,
            ),
             Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp3()));
              },
              backgroundColor: Color.fromARGB(255, 53, 87, 33),
              child: const Icon(Icons.arrow_forward),
                ),
             ),
            
          ]
        ),
      )
    );
  }
}