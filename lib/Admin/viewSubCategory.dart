import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class viewsubCategory extends StatelessWidget {
  const viewsubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

     Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(192, 0, 31, 0),
          ),
          Padding(padding: EdgeInsets.only(left: 20,),
          child: Text("EcoSentry",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(192, 0, 31, 0),
          ),
          ),
          ),
          
          

        ],
      ),
    ),
    Container(
      height: 500,
      padding: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Color(0xFFEDECF2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),

        ),
      ),
      child: Column(children: [
        Container(
 
          child: Row(children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              
              child: Text(
                "Sub Categories",
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(192, 0, 31, 0),),
              ),

            )
          ],),
          ),
          Container(
      height: 110,
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular((10),
        )
      ),
    )
      ],),
    ),
    
        ]
      )
    );
  }
}