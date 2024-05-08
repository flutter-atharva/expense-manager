import 'package:expense_manager/create_account.dart';
import 'package:expense_manager/home.dart';
import 'package:expense_manager/login_page.dart';
import 'package:expense_manager/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}
