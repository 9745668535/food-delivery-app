import 'dart:convert';

import 'package:easy_stepper/easy_stepper.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../utils/utils.dart';
import '../model/login_model.dart';
import '../../onboarding_screens/model/AddUserModel.dart';
import '../../onboarding_screens/model/adduserresponse.dart';



class LoginServices {
  static Future<LoginResponse?> fetchLoginData(
      String mobileNumber, context) async {
   print(mobileNumber);

    try {
      Response response = await http.get(
          Uri.parse('http://89.117.36.175:8080/Foodcart/validateLogin?mobile=$mobileNumber'));
      if (response.statusCode == 200) {

        final responseJson = json.decode(response.body);
        print(responseJson.toString());
        return LoginResponse.fromJson(responseJson);
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
    return null;
  }
  static Future<AddUserResponse?> addUser(
      AddUserModel addUserModel, context) async {
    Map<String, String> headers = {
      "Content-Type": "application/json",

    };
      var body = addUserModel.toJson();
      print("ddddddddddddd"+addUserModel.toJson().toString());
    try {
      Response response = await http.post(headers: headers,
          Uri.parse('http://89.117.36.175:8080/Foodcart/addUser'),body: json.encode(body));
      print("responsecode"+response.statusCode.toString());
      if (response.statusCode == 200) {

        final responseJson = json.decode(response.body);
        print("hhhhhhhhhhhhhhh"+responseJson.toString());
        return AddUserResponse.fromJson(responseJson);
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
    return null;
  }


}



