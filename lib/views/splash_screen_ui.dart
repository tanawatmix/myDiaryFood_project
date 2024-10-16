// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'login_ui.dart'; // Import the LoginUi class if it exists in another file

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}



class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginUi(),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRect(
              child: Image.asset(
                'assets/images/banner.jpg',
                width: MediaQuery.of(context).size.width * 0.75,
              ),
            ),  
            SizedBox(
              height: 20,
            ),
            Text(
              'บันทึกการกิน',
              style: TextStyle( 
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 0, 255, 34),
            ),
          ],
        ),
      ),
    );
  }
}
