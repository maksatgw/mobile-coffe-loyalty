import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CoffeeLoyaltyApp());
}

class CoffeeLoyaltyApp extends StatelessWidget {
  const CoffeeLoyaltyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Loyalty App',
      theme: ThemeData.light(),
      home: const Placeholder(), // geçici ekran
    );
  }
}
