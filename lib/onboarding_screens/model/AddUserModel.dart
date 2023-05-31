

class AddUserModel {
  String? firstname;
  String? lastname;
  String? address;
  String? zipcode;
  String? email;
  String? mobileno;
  String? altMobileno;
  String? pwrd;
  String? role;


  AddUserModel({
    this.firstname,
    this.lastname,
    this.address,
    this.zipcode,
    this.email,
    this.mobileno,
    this.altMobileno,
    this.pwrd,
    this.role,

  });

  factory AddUserModel.fromJson(Map<String, dynamic> json) => AddUserModel(
    firstname: json["firstname"],
    lastname: json["lastname"],
    address: json["address"],
    zipcode: json["zipcode"],
    email: json["email"],
    mobileno: json["mobileno"],
    altMobileno: json["alt_mobileno"],
    pwrd: json["pwrd"],
    role: json["role"],

  );

  Map<String, dynamic> toJson() => {
    "firstname": firstname,
    "lastname": lastname,
    "address": address,
    "zipcode": zipcode,
    "email": email,
    "mobileno": mobileno,
    "alt_mobileno": altMobileno,
    "pwrd": pwrd,
    "role": role,

  };
}
