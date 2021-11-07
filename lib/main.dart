import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_clone/constants.dart';
import 'package:instagram_ui_clone/screen/app_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: white,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const AppScreen(),
    );
  }
}
