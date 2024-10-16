class Member {
  String? message;
  String? memId;
  String? memFullname;
  String? memEmail;
  String? memUsername;
  String? memPassword;
  String? memAge;

  Member(
      {this.message,
      this.memId,
      this.memFullname,
      this.memEmail,
      this.memUsername,
      this.memPassword,
      this.memAge});
//แปลงจากjsonมาเป็นข็อมูลในแอพ
  Member.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    memId = json['memId'];
    memFullname = json['memFullname'];
    memEmail = json['memEmail'];
    memUsername = json['memUsername'];
    memPassword = json['memPassword'];
    memAge = json['memAge'];
  }
//แปลงข้อมูลในแอพมาเป็นjson
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['memId'] = this.memId;
    data['memFullname'] = this.memFullname;
    data['memEmail'] = this.memEmail;
    data['memUsername'] = this.memUsername;
    data['memPassword'] = this.memPassword;
    data['memAge'] = this.memAge;
    return data;
  }
}
