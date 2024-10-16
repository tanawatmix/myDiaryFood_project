// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  //เปิดปิดตาช่องpassword
  bool passStatus = true;
  //textfield controller
  TextEditingController memFullnameCtrl = TextEditingController(text: '');
  TextEditingController memEmailCtrl = TextEditingController(text: '');
  TextEditingController memUsernameCtrl = TextEditingController(text: '');
  TextEditingController memPasswordCtrl = TextEditingController(text: '');
  TextEditingController memAgeCtrl = TextEditingController(text: '');

  showWaringDialog(context, msg) {
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
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2023/04/20/12/22/globe-7939725_1280.jpg',
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.width * 0.45,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.04,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ชื่อ-สกุล :',
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
                  controller: memFullnameCtrl,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_3_outlined,
                    ),
                    hintText: 'ป้อนชื่อ-สกุล',
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
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'อีเมล์ :',
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
                  keyboardType: TextInputType.emailAddress,
                  controller: memEmailCtrl,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    hintText: 'ป้อนอีเมล์',
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
                  top: MediaQuery.of(context).size.height * 0.03,
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
                    prefixIcon: Icon(
                      Icons.verified_user,
                    ),
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
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.03,
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
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                    ),
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
                        )),
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
                  top: MediaQuery.of(context).size.height * 0.03,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'อายุ :',
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
                  keyboardType: TextInputType.number,
                  controller: memAgeCtrl,
                  decoration: InputDecoration(
                    hintText: 'ป้อนอายุ',
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
                height: MediaQuery.of(context).size.height * 0.03,
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
                    if (memFullnameCtrl.text == '' ||
                        memEmailCtrl.text == '' ||
                        memUsernameCtrl.text == '' ||
                        memPasswordCtrl.text == '' ||
                        memAgeCtrl.text == '') {
                      showWaringDialog(context, 'กรุณากรอกข้อมูลให้ครบถ้วน');
                    } else {
                      //insert data
                      print('บันทึกข้อมูล');
                    }
                  },
                  child: Text(
                    'บันทึกการลงทะเบียน',
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
            ],
          ),
        ),
      ),
    );
  }
}
