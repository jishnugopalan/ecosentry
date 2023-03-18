import 'package:ecosentry/Landholder/Land.dart';
import 'package:ecosentry/Landholder/LandholderSignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Land(),
  
    );
  }
}