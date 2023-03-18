import 'package:ecosentry/Customer/CustomerSignUp.dart';
import 'package:ecosentry/Customer/Payment.dart';
import 'package:flutter/material.dart';
import 'package:ecosentry/Customer/Complaint.dart';
import 'package:ecosentry/Customer/Feedback.dart';
import 'package:ecosentry/Customer/MyProfile.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentDemo(),
      );
  }
}