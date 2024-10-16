// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_diaryfood_project/views/splash_screen_ui.dart';

void main() {
  runApp(
    MyDiaryFood(),
  );
} 

class MyDiaryFood extends StatefulWidget {
  const MyDiaryFood({super.key});

  @override
  State<MyDiaryFood> createState() => _MyDiaryFoodState();
}

class _MyDiaryFoodState extends State<MyDiaryFood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),  
      theme: ThemeData(
      textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)
      ),
    );
  }
}