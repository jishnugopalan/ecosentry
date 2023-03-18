import 'package:ecosentry/Dasboard.dart';
import 'package:ecosentry/Login.dart';
import 'package:ecosentry/Shop/Product.dart';
import 'package:ecosentry/Shop/Complaint.dart';
import 'package:ecosentry/Shop/MyProfile.dart';
import 'package:ecosentry/Shop/Feedback.dart';
import 'package:ecosentry/Shop/ShopSignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Product()
  
    );
  }
}