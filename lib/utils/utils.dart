
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:intl/intl.dart';

import '../resources/color_resource.dart';
import '../resources/drawable_resources.dart';
import '../resources/style_resources.dart';


class Utils {
  static bool isDebug = true;











  static navigateTo(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  static navigateAndClearAll(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
            (Route<dynamic> route) => false);
  }

  static navigateAndReplace(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget));
  }



  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  static DateTime combine(DateTime date) =>
      DateTime(date.year, date.month, date.day);

  static isValidEmail(String value) {
    RegExp regExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (regExp.hasMatch(value)) {
      return true;
    } else {
      return false;
    }
  }

  static isValidPhone(String value) {
    RegExp regExp = new RegExp(r'^(0|91)?[7-9][0-9]{9}');
    if (regExp.hasMatch(value)) {
      return true;
    } else {
      return false;
    }
  }

  static isValidGstIn(String value) {
    RegExp regExp =
    new RegExp(r'\d{2}[A-Z]{5}\d{4}[A-Z]{1}[A-Z\d]{1}[Z]{1}[A-Z\d]{1}');
    if (regExp.hasMatch(value)) {
      return true;
    } else {
      return false;
    }
  }

  static isPasswordValidation(String value) {
    RegExp regExp = new RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{10,}$');
    if (regExp.hasMatch(value)) {
      return true;
    } else {
      return false;
    }
  }




//copy text
  static void copyText(String yourText) {
    Clipboard.setData(ClipboardData(text: yourText));
  }








}
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
