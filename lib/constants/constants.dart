
import 'package:easy_stepper/easy_stepper.dart';

class Constants{


  //Fonts
  static const fontFamily = "Poppins";
  static final String baseUtilsUrl =
      "http://89.117.36.175:8080/Foodcart";
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double getWeight(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  static final String IS_LOGGED_IN_PREF_KEY = "isLogedIn";
  static final String shopid = "shop_id";

}