import 'dart:convert';
import 'package:ecosentry/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  @override
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String name="",email="",phone="",usertype="",password="";
  
     Future<void> SignUp() async {
      if(_formkey.currentState!.validate()){
     Users user=new Users(name, email, phone, password, usertype);
     String userdata=jsonEncode(user);
     print(userdata);
     var client = http.Client();
     try{
      var response = await client.post(
        Uri.parse("http://10.0.2.2:3000/api/register"),
        headers:{"Content-Type":"application/Json"},
        body: jsonEncode(user));
         print(response.body);
        // String res=jsonDecode(response.body);


        if(response.statusCode==404){
        showDialog(context: context, builder: (BuildContext context ){
        return AlertDialog(
          title: Text("Error"),
          content: Text('error'),
          actions: [
            TextButton(
              child: Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop();
            }, 
            )
          ],
        );
      });
        }
        else{

        }

     }
     catch(e){
      print(e);
      showDialog(context: context, builder: (BuildContext context ){
        return AlertDialog(
          title: Text("Error"),
          content: Text("Error in signup"),
          actions: [
            TextButton(
              child: Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop();
            }, 
            )
          ],
        );
      });

     }
   }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ListView(
            children: [
              Form(
                key: _formkey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/signup.png',height: 300,),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Sign Up',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Align(
                      alignment: Alignment.centerLeft,
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Name",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 53, 87, 33)),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          // labelText: 'First Name',
                          // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                          //hintText: "First Name",
                         focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 53, 87, 33),
                              )
                              ), 
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 53, 87, 33),
                              ))),
                     keyboardType: TextInputType.name,
                    validator: (value) {
                    if(value!.isEmpty){
                    return "Name is required";
                      }
                      setState(() {
                       name=value;
                       });
                       return null;
                       },
                    ),
                    ),
                    const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 53, 87, 33)),
                ),
              ),
              SizedBox(
                      height: 45,
                      child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    // labelText: 'First Name',
                    // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                    //hintText: "First Name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        ))),
                      keyboardType: TextInputType.name,
                    validator: (value) {
                    if(value!.isEmpty){
                    return "Email is required";
                      }
                      setState(() {
                       email=value;
                       });
                       return null;
                       },             
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Phone",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 53, 87, 33)),
                ),
              ),
              
              SizedBox(
                      height: 45,
                      child:TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    // labelText: 'First Name',
                    // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                    //hintText: "First Name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        ))),
                     keyboardType: TextInputType.name,
                    validator: (value) {
                    if(value!.isEmpty){
                    return "Phone is required";
                      }
                      setState(() {
                       phone=value;
                       });
                       return null;
                       },              
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Usertype",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 53, 87, 33)),
                ),
              ),
              SizedBox(
                      height: 45,
                      child:TextFormField(
                        obscureText: true,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    // labelText: 'First Name',
                    // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                    //hintText: "First Name",
                    
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        ))),
                     keyboardType: TextInputType.name,
                    validator: (value) {
                    if(value!.isEmpty){
                    return "Usertype is required";
                      }
                      setState(() {
                       usertype=value;
                       });
                       return null;
                       }, 
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",
                style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 53, 87, 33))),
              ),
              SizedBox(
                      height: 45,
                      child:TextFormField(
                        obscureText: true,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    // labelText: 'First Name',
                    // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                    //hintText: "First Name",
                    
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 87, 33),
                        ))),
                     keyboardType: TextInputType.name,
                    validator: (value) {
                    if(value!.isEmpty){
                    return "Password is required";
                      }
                      setState(() {
                       password=value;
                       });
                       return null;
                       },
              ),
              ),
                  ],
                ),
              ),
               Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
                  color: Color.fromARGB(255, 53, 87, 33),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                 onPressed:SignUp
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp2()));
                
                
                  ),
               ),
            ]),
      ),
            ]
            ),
    )
    );
  }
}
