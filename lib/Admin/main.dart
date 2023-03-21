import 'package:ecosentry/Admin/AdvisorSignUp.dart';
import 'package:ecosentry/Admin/Category.dart';
import 'package:ecosentry/Admin/SubCategory.dart';
import 'package:ecosentry/Admin/viewCategory.dart';
import 'package:ecosentry/Admin/viewSubCategory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SubCategory()
  
    );
  }
}