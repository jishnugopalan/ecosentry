import 'dart:developer';
import 'dart:ui';

import 'package:ecosentry/Login.dart';
import 'package:ecosentry/UserRegistration2.dart';
import 'package:flutter/material.dart';

class UserSignUp1 extends StatefulWidget {
  const UserSignUp1({super.key});

  @override
  State<UserSignUp1> createState() => _UserSignUp1State();
}

class _UserSignUp1State extends State<UserSignUp1> {
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
      appBar: AppBar(title: Center(child: Text("SignUp")),backgroundColor: Color.fromARGB(255, 53, 87, 33)),
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
                                  labelText: "First Name",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Your First Name",
                                  
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
                                  labelText: "Last Name",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Your Last Name",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33),)
                                  )),
             ),),
            
             Row(
              children: [
                Text("DOB    "),
                MaterialButton(
                onPressed: _showDatePicker,
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Padding(padding: EdgeInsets.all(20),
                child: Text("Select Date"),
                ),
                
                ),
             ),
              ],
             ),
             
           /*  TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: _dateTime.toString(),
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Your Last Name",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33),)
                                  )),
             ),*/
             Expanded(child: 
             Row(
              children:[
                Text('Gender',style: TextStyle(fontSize: 16),),
                Radio(value: 'male',
                             groupValue: gender, 
                             onChanged: (value){
                              setState(() {
                                gender = value;
                              });
                             }),
               Text("Male",style: TextStyle(fontSize: 16)),
               Radio(value: 'female',
                             groupValue: gender, 
                             onChanged: (value){
                              setState(() {
                                gender = value;
                              });
                             }),
               Text("Female",style: TextStyle(fontSize: 16)),
               Radio(value: 'others',
                             groupValue: gender, 
                             onChanged: (value){
                              setState(() {
                                gender = value;
                              });
                             }),
               Text("Others",style: TextStyle(fontSize: 16)),
              ]
              ),),
          const SizedBox(
              height: 30,
            ),
            Expanded(child: 
             TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Email",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Your Email",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33),)
                                  )),
             ),
            
            ),
            Expanded(child: 
             TextFormField(
                              style: TextStyle(color: Colors.black),
                              
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  labelText: "Phone No.",
                                  labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                                  hintText: "Enter Your Phone Number",
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Color.fromARGB(255, 53, 87, 33),)
                                  )),
             ),
            
            ),
             Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp2()));
              },
              backgroundColor: Color.fromARGB(255, 53, 87, 33),
              child: const Icon(Icons.arrow_forward),
                ),
             ),
          ],
        ),
    ),
    );
  }
}