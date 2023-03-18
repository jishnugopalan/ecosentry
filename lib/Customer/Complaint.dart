import 'package:flutter/material.dart';

class Complaint extends StatelessWidget {
  const Complaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Complaint",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,)) ),backgroundColor: Color.fromARGB(192, 0, 31, 0),),
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/plant5.jpg')
        )
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
             const SizedBox(
                height: 50,
              ),


              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                Align(
                      alignment: Alignment.centerLeft,
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Title",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(192, 0, 31, 0)),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
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
                    ),
                    ),
                    const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 16, color: Color.fromARGB(192, 0, 31, 0)),
                ),
              ),
              SizedBox(
                      height: 45,
                      child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                        fillColor: Colors.grey,
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
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                      alignment: Alignment.centerLeft,
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Reply",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(192, 0, 31, 0)),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
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
                    ),
                    ),
                    const SizedBox(
                height: 20,
              ),
                ],
                ),
              ),
              Row(
                children: [
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                 MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
                  color: Color.fromARGB(192, 0, 31, 0),
                  child: const Text(
                    'Send',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                 onPressed: () {
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp2()));
                },
                
                  
               ),
               const SizedBox(
                width: 20,
              ),
              
               MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
                  color: Color.fromARGB(192, 0, 31, 0),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.black,fontSize: 18),
                  ),
                 onPressed: () {
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp2()));
                },
                
                  ),
               
                ],
              ),
               const SizedBox(
                height: 400,
              ),
            ]),
      ),
      
    )
    );;
  }
}
