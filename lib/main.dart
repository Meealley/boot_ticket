import 'package:boot_tickets/screens/screen.dart';
import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ticket App",
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: TextStyle(color: Styles.primaryColor)),
        fontFamily: 'Rethink Sans',
        primaryColor: primary,
      ),
      home: const Screen(),
    );
  }
}
