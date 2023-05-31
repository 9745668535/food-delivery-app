import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/color_resource.dart';

import '../constants/constants.dart';

String fontFamily = Constants.fontFamily;


class StyleResource {
  static TextStyle appHeading(BuildContext context, double size) {
    return new TextStyle(
        fontFamily: fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: size
    );
  }

  static TextStyle appHeading2(BuildContext context) {
    return new TextStyle(
        fontFamily: fontFamily,
        color: Colors.deepOrangeAccent,
        fontWeight: FontWeight.normal,
        fontSize: 48
    );
  }

  static TextStyle loginHead(BuildContext context, double size) {
    return new TextStyle(
        fontFamily: fontFamily,
        color: ColorResource.blackGrey,
        fontWeight: FontWeight.w600,
        fontSize: size
    );
  }

  static TextStyle greyHead(BuildContext context, double size) {
    return new TextStyle(
        fontFamily: fontFamily,
        color: Colors.black54,
        fontWeight: FontWeight.w400,
        fontSize: size
    );
  }

  static TextStyle headBold(BuildContext context, double size) {
    return new TextStyle(
        fontFamily: fontFamily,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: size
    );
  }

  static TextStyle headWithUnderline(BuildContext context, double size) {
    return TextStyle(
      fontFamily: fontFamily,
      color: ColorResource.appBackgroundColor,
      fontWeight: FontWeight.w400,
      fontSize: size,
      decoration: TextDecoration.underline,
    );
  }

  static TextStyle headBlack(BuildContext context, double size) {
    return TextStyle(
      fontFamily: fontFamily,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: size,

    );
  }
  static TextStyle normalBlack(BuildContext context, double size) {
    return TextStyle(
      fontFamily: fontFamily,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: size,

    );
  }
  static TextStyle BoldOrange(BuildContext context, double size) {
    return TextStyle(
      fontFamily: fontFamily,
      color: ColorResource.appBackgroundColor,
      fontWeight: FontWeight.bold,
      fontSize: size,

    );
  }

}