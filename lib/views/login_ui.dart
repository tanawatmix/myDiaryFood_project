// ignore_for_file: prefer_const_constructors, prefer_is_empty
import 'package:flutter/material.dart';
import 'package:my_diaryfood_project/services/call_api.dart';
import 'package:my_diaryfood_project/views/home_ui.dart';
import 'package:my_diaryfood_project/views/register_ui.dart'; // Import the RegisterUi class

import '../models/member.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  bool passStatus = true;
  //เมธอดแสดงคำเตือนต่างๆ
  showWarningDialog(context, msg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'คำเตือน',
          ),
        ),
        content: Text(
          msg,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'ตกลง',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
  //ตัวควบคุมtextfield
  TextEditingController memUsernameCtrl = TextEditingController(text: '');
  TextEditingController memPasswordCtrl = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'บันทึกการกิน',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/banner.jpg',
                  height: MediaQuery.of(context).size.width * 0.45,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                'บันทึกการกิน',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  color: Colors.grey[800],
                ),
              ),
              Text(
                'เข้าใช้งานระบบ',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อผู้ใช้ :',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.015,
                ),
                child: TextField(
                  controller: memUsernameCtrl,
                  decoration: InputDecoration(
                    hintText: 'ป้อนชื่อผู้ใช้',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'รหัสผ่าน :',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.015,
                ),
                child: TextField(
                  controller: memPasswordCtrl,
                  obscureText: passStatus,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passStatus = !passStatus;
                        });
                      },
                      icon: Icon(
                        passStatus == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    hintText: 'ป้อนรหัสผ่าน',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.03,
                  bottom: MediaQuery.of(context).size.height * 0.1,
                ),
                child: ElevatedButton(
                  onPressed: () { 
                    //validate 
                     //Validate
                    if (memUsernameCtrl.text.trim().length == 0) {
                      showWarningDialog(context, 'ป้อนชื่อผู้ใช้ด้วย');
                    } else if (memPasswordCtrl.text.trim().length == 0) {
                      showWarningDialog(context, 'ป้อนรหัสผ่านด้วย');
                    } else {
                      //validate username and password from DB through API
                      //Create a variable to store data to be sent with the API
                      Member member = Member(
                        memUsername: memUsernameCtrl.text.trim(),
                        memPassword: memPasswordCtrl.text.trim(),
                      );
                      //call API
                      CallAPI.callCheckLoginAPI(member).then((value) {
                        if (value.message == '1') {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUi(),
                            ),
                          );
                        } else {
                          showWarningDialog(
                              context, "ชื่อผู้ใช้รหัสผ่านไม่ถูกต้อง");
                        }
                      });
                    }
                  },
                  child: Text(
                    'เข้าใช้งานระบบ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.green,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.8,
                      MediaQuery.of(context).size.height * 0.07,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterUi(),
                    ),
                  );
                },
                child: Text(
                  "ลงทะเบียนผู้ใช้ใหม่",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
