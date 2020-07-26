import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/login.dart';
import 'package:instagram/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}