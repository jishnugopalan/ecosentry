import 'package:ecosentry/Admin/AdvisorSignUp.dart';
import 'package:ecosentry/Admin/Category.dart';
import 'package:ecosentry/Admin/SubCategory.dart';
import 'package:ecosentry/Admin/SubCategoryyyy.dart';
import 'package:flutter/material.dart';
import 'package:ecosentry/Admin/Categoryyy.dart';

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