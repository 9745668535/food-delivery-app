

class UpdateRoleModel {
  String? status;
  String? msg;

  UpdateRoleModel({
    this.status,
    this.msg,
  });

  factory UpdateRoleModel.fromJson(Map<String, dynamic> json) => UpdateRoleModel(
    status: json["Status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "msg": msg,
  };
}