 import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


 class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isObscurePassword = true;
    String? gender;
    TextEditingController dateController=TextEditingController();
  @override
  void initState()
  {
    super.initState();
    dateController.text=""; 
 }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),backgroundColor: Color.fromARGB(255, 53, 87, 33),
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
      body: Container(
        child: Container(
        padding: EdgeInsets.only(left: 15, top: 20,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=is&k=20&c=9S-ZGkvGRCMwg33JOPrqVsAxIYx_u99Wm_w-1jXzdpc="
                          )
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white
                          ),
                          color: Color.fromARGB(255, 53, 87, 33)
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ],
                ),
              ),
              SizedBox(
               height: 30,
              ),

             buildTextField("First Name", "",false) ,
             buildTextField("Middle Name", "",false) ,
             buildTextField("Last Name", "",false) ,
             buildText(),
             buildgender() ,
              Row(
              children: [
                   Text('Address',style: TextStyle(color: Colors.grey,fontSize: 18),),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(
               height: 30,
              ),
             buildTextField('Country', '', false),
             buildTextField('State', '', false),
             buildTextField('District', '', false),
             buildTextField('City', '', false),
             buildTextField('Landmark', '', false),
             buildTextField('Housename', '', false),
             buildTextField('Postal/Zip Code', '', false),
             Row(
              children: [
                   Text('Contact',style: TextStyle(color: Colors.grey,fontSize: 18),),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(
               height: 30,
              ),
             buildTextField('Email', '', false),
             buildTextField('Phone', '', false),
             buildTextField('Password', '', true),
             buildTextField('Confirm Password', '', true),

             SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                 ElevatedButton(
                  onPressed: () {},
                   child: Text("SAVE", style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2,
                    color: Colors.white,
                   ),),
                   style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 53, 87, 33),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                   ),
                   )
              ],
             )
            ],
          ),
          
          ),
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


Widget buildgender(){

    return Padding(
      padding: EdgeInsets.only(bottom: 30),
    child: Row(
              children:[
                Text(' Gender  ',style: TextStyle(fontSize: 16),),
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
              ),
              );
  }
}