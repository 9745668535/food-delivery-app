

class AddUserResponse {
  String? status;
  UserDetails? userDetails;

  AddUserResponse({
    this.status,
    this.userDetails,
  });

  factory AddUserResponse.fromJson(Map<String, dynamic> json) => AddUserResponse(
    status: json["Status"],
    userDetails: json["UserDetails"] ==null ? null :UserDetails.fromJson(json["UserDetails"]),
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "UserDetails": userDetails!.toJson(),
  };
}

class UserDetails {
  int? seqUserId;
  String? firstname;
  String? lastname;
  String? address;
  String? zipcode;
  String? email;
  String? mobileno;
  String? altMobileno;
  String? status;
  String? role;

  UserDetails({
    this.seqUserId,
    this.firstname,
    this.lastname,
    this.address,
    this.zipcode,
    this.email,
    this.mobileno,
    this.altMobileno,
    this.status,
    this.role,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
    seqUserId: json["seq_user_id"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    address: json["address"],
    zipcode: json["zipcode"],
    email: json["email"],
    mobileno: json["mobileno"],
    altMobileno: json["alt_mobileno"],
    status: json["status"],
    role: json["role"],
  );

  Map<String, dynamic> toJson() => {
    "seq_user_id": seqUserId,
    "firstname": firstname,
    "lastname": lastname,
    "address": address,
    "zipcode": zipcode,
    "email": email,
    "mobileno": mobileno,
    "alt_mobileno": altMobileno,
    "status": status,
    "role": role,
  };
}
