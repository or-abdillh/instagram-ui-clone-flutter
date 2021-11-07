import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/screen/app_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(        
        primarySwatch: Colors.grey,
      ),
      home: const AppScreen(),
    );
  }
}