import 'package:flutter/material.dart';
import 'package:khata/screens/login_Screen.dart';
import 'package:khata/screens/splash_screen.dart';
import 'package:khata/widgets/input_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khata Kitab',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: new SplashScreen(),
    );
  }
}
