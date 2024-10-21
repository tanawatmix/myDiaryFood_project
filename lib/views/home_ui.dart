// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_diaryfood_project/models/member.dart';
import 'package:my_diaryfood_project/views/update_profile_ui.dart';

class HomeUI extends StatefulWidget {
  Member? member;

  HomeUI({super.key, this.member});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'บันทึกการกิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2020/02/02/03/39/man-4811935_1280.png",
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.width * 0.35,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
//FullName
          Text(
            'ชื่อ-สกุล : ${widget.member!.memFullname}',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
//Email
          Text(
            'อีเมล : ${widget.member!.memEmail}',
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateProfileUi(member: widget.member,),
                ),
              ).then((value){
                //เอาค่าที่ส่งกลับมาหลังจากแก้ไขเสร็จมาแก้ไขให้กับwidget.member
                setState(() {
                  widget.member?.memEmail = value.memEmail;
                  widget.member?.memUsername = value.memUsername;
                  widget.member?.memPassword = value.memPassword;
                  widget.member?.memAge = value.memAge;
                });
              });
            },
            child: Text(
              'UPDATE PROFILE',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  color: Colors.orange),
            ),
          )
        ],
      )),
    );
  }
}