import 'package:flutter/material.dart';

class PaymentDemo extends StatelessWidget {
  const PaymentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Payment",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,)) ),backgroundColor: Color.fromARGB(192, 0, 31, 0),),
      body: Container(
      
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
             const SizedBox(
                height: 30,
              ),


              Container(

                child: Align(
                  alignment: Alignment.topLeft,
                  child:
                  Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child:const Text(
              'Add your payment information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
              ),
                    const SizedBox(
                height: 30,
              ),
                     Align(
                      alignment: Alignment.topLeft,
                      child:const Text(
              'Card information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                                decoration: InputDecoration(
                        
                          // labelText: 'First Name',
                          // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                          hintText: "Card Number",
                          suffixIcon: Icon(
                            Icons.credit_card,
                  color: Colors.black.withOpacity(.3),
                          ),
                         focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                              ), 
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                              ),
                    Row(
                      children: [
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                                decoration: InputDecoration(
                        
                          // labelText: 'First Name',
                          // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                          hintText: "MM/YY",
                         focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                              ), 
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                              ),
                           ),
                          SizedBox(
                          width: 177,
                              child: TextFormField(
                                decoration: InputDecoration(
                        
                          // labelText: 'First Name',
                          // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                          hintText: "CVC",
                          suffixIcon: Icon(
                            Icons.add_card_sharp,
                  color: Colors.black.withOpacity(.3),
                          ),
                         focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                              ), 
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                              ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                                decoration: InputDecoration(
                        
                          // labelText: 'First Name',
                          // labelStyle: TextStyle(color: Color.fromARGB(255, 53, 87, 33)),
                          hintText: "Card Holder Name",
                         focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                              ), 
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                              ),

                    
                    
                ],
                ),
                )
              ),
               const SizedBox(
                      height: 40,
                    ),
              Row(
                children: [
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                 SizedBox(
                  width: 300,
                  height: 50,
                  child: MaterialButton(
                  //shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
                  color: Color.fromARGB(192, 0, 31, 0),
                  child: const Text(
                    'Pay',
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                 onPressed: () {
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserSignUp2()));
                }, 
               ),
                 )
                 
               
               
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
