//ไฟล์นี้จะประกอบเมธอดต่างๆ ที่ใช้เรียก api ต่างๆตามวัสถุประสงค์การทำงานของapp
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_diaryfood_project/models/member.dart';
import 'package:my_diaryfood_project/utils/env.dart';

class CallAPI {
//เมธอดเรียก API ตรวจสอบชื่อผู้ใช้และรหัสผ่าน
  static Future<Member> callCheckLoginAPI(Member member) async {
    //เรียกใช้api แล้วเก็บค่าที่ได้ในตัวแปร
    final responseData = await http.post(
      Uri.parse('${Env.hostName}/mydiaryfood/apis/check_login_api.php'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(member.toJson()),
    );

    if (responseData.statusCode == 200) {
      return Member.fromJson(jsonDecode(responseData.body));
    } else {
      throw Exception('Failed to call API');
    }
  }

//เมธอดเรียก API สมัครสมาชิก
  static Future<Member> callRegisterAPI(Member member) async {
    final responseData = await http.post(
      Uri.parse('${Env.hostName}/mydiaryfood/apis/register_api.php'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(member.toJson()),
    );

    if (responseData.statusCode == 200) {
      return Member.fromJson(jsonDecode(responseData.body));
    } else {
      throw Exception('Failed to call API');
    }
  }

}
