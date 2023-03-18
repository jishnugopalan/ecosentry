 import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
 import 'package:flutter/src/material/icons.dart';
 import 'package:intl/intl.dart';

 class SubCategoryyy extends StatefulWidget {
  const SubCategoryyy({super.key});

  @override
  State<SubCategoryyy> createState() => _SubCategoryyyState();
}

class _SubCategoryyyState extends State<SubCategoryyy> {
  bool isObscurePassword = true;
    TextEditingController dateController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Category'),backgroundColor: Color.fromARGB(255, 53, 87, 33),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), onPressed: () {  },
         ),
         actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: (){},
           )
         ],
      ),
      body:
      Container(
         
         decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 150,color: Color.fromARGB(255, 235, 237, 237)),
                left: BorderSide(width: 20,color: Color.fromARGB(255, 235, 237, 237)),
                right: BorderSide(width: 20,color: Color.fromARGB(255, 235, 237, 237)),
                bottom: BorderSide(width: 150,color: Color.fromARGB(255, 235, 237, 237)),
              )
            ),
            child: Center(
                 child:ListView(
                  padding: EdgeInsets.only(left: 20,top: 80,right: 20),
                  children: [
                      buildTextField("Category", "",false) ,
                      buildTextField("Sub Category", "",false) ,
                     SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                 ElevatedButton(
                  onPressed: () {},
                   child: Text("ADD", style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.white,
                   ),),
                   style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 53, 87, 33),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                   ),
                   ),
                 OutlinedButton(
                  onPressed: (){},
                 child: Text("Cancel",style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                  color: Colors.black
                 ),
                 ),
                 style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                 ),
                 ),
              ],
             )
                  ],
                   
                    
                
                 )
              
              
            ),
         ),
    );
  }
  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField){
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      obscureText: isPasswordTextField? isObscurePassword:false,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide:BorderSide(color:  Color.fromARGB(255, 53, 87, 33), ),
      ),
      suffixIcon: isPasswordTextField ?
      IconButton(onPressed: (){},
       icon: Icon(Icons.remove_red_eye, color: Colors.grey,),
       ): null,
       contentPadding: EdgeInsets.only(bottom: 5,left: 10,right: 10),
       labelText: labelText,
       floatingLabelBehavior: FloatingLabelBehavior.always,
       hintText: placeholder,
       labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33),fontSize: 20),
       hintStyle: TextStyle(
        fontSize: 12,
        color: Colors.grey
       )
    ),
    ),
    );
  }

Widget buildText(){
    return   Padding(
      padding: EdgeInsets.only(bottom: 30),
    child: TextField(
      controller: dateController,
      readOnly: true,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide:BorderSide(color:  Color.fromARGB(255, 53, 87, 33), ),
      ),
      suffixIcon: 
      IconButton(onPressed: ()async{
        DateTime? pickedDate=await showDatePicker(context: context,
         initialDate: DateTime.now(),
          firstDate: DateTime(2000),
           lastDate: DateTime(2101)
           );
           if(pickedDate!=null)
           {
            String formattedDate=DateFormat("yyyy-MM-dd").format(pickedDate);
              setState(() {
                dateController.text=formattedDate.toString();
              });
           }else{
            print("Not Selected");
           }
      },
       icon: Icon(Icons.calendar_today, color: Colors.grey,),
       
       ),
       
       contentPadding: EdgeInsets.only(bottom: 5,left: 10,right: 10),
       labelText: 'DOB',
       floatingLabelBehavior: FloatingLabelBehavior.always,
       
       labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33),fontSize: 20),
       hintStyle: TextStyle(
        fontSize: 12,
        color: Colors.grey
       )
    ),
    ),
    );
  }

}