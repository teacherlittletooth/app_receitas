import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Receitas",
      home: Scaffold(
        body: Center(child: MyLogin()) 
      ),
    );
  }
}
