

import '../../constants/constants.dart';
import '../../utils/shared_utils.dart';

class LoginResponse {
  String? status;
  String? msg;
  Userdata? userdata;
  int? shopId;

  LoginResponse({
    this.status,
    this.userdata,
    this.shopId,
    this.msg
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    status: json["Status"],
    userdata: json["Userdata"]==null?null:Userdata.fromJson(json["Userdata"]),
    shopId: json["ShopId"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Userdata": userdata!.toJson(),
    "ShopId": shopId,
    "msg": msg,
  };
  static saveClient(LoginResponse loginResponse) async {
    await SharedUtils.setString(Constants.shopid, loginResponse.shopId!.toString());

  }
}

class Userdata {
  int? seqUserId;
  String? phone;
  String? email;
  dynamic pwrd;
  String? status;
  String? role;
  String? loginStatus;

  Userdata({
    this.seqUserId,
    this.phone,
    this.email,
    this.pwrd,
    this.status,
    this.role,
    this.loginStatus,
  });

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
    seqUserId: json["seq_user_id"],
    phone: json["phone"],
    email: json["email"],
    pwrd: json["pwrd"],
    status: json["status"],
    role: json["role"],
    loginStatus: json["login_status"],
  );

  Map<String, dynamic> toJson() => {
    "seq_user_id": seqUserId,
    "phone": phone,
    "email": email,
    "pwrd": pwrd,
    "status": status,
    "role": role,
    "login_status": loginStatus,
  };

}
