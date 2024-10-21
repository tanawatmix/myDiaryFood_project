// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_diaryfood_project/views/login_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  // ฟังก์ชันสำหรับสร้าง PageViewModel
  PageViewModel buildPage(String title, String body) {
    return PageViewModel(
      decoration: const PageDecoration(pageColor: Colors.green),
      titleWidget: Text(
        title,
        style: GoogleFonts.kanit(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      image: Image.asset(
        "assets/images/banner.jpg",
        height: MediaQuery.of(context).size.height * 0.7,
      ),
      bodyWidget: Text(body),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: const EdgeInsets.only(top: 150, bottom: 10),
        child: IntroductionScreen(
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            buildPage("Let's start recording your Eat.", 'Customize your Eat!'),
            buildPage("Let's start recording your Eat!!!", 'Customize your Eat!!!'),
          ],
          dotsDecorator: DotsDecorator(
            size: Size(MediaQuery.of(context).size.width * 0.025,
                MediaQuery.of(context).size.width * 0.025),
            color: Colors.grey,
            activeSize: Size(MediaQuery.of(context).size.width * 0.055,
                MediaQuery.of(context).size.width * 0.025),
            activeColor: Colors.green[700],
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          globalBackgroundColor: Colors.green[50],
          next: Container(
            padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'NEXT',
                  style: GoogleFonts.kanit(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
          done: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Login/register",
                  style: GoogleFonts.kanit(color: Colors.white),
                ),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginUI()),
          ),
        ),
      ),
    );
  }
}
