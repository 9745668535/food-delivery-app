import 'dart:convert';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:myfoodcart/constants/constants.dart';
import 'package:myfoodcart/dash_home/models/getItemModel.dart';
import 'package:myfoodcart/sharedpreferences/shared_preferences.dart';

import '../../utils/shared_utils.dart';
import '../../utils/utils.dart';
import '../models/get_item_list.dart';
import '../models/updateRoleModel.dart';


ShopItemList? getItemLists;

class GetItemsServices{
  // static Future<GetItemLiist?> fetchItems(context) async {
  //   var shopId = await SharedUtils.getString(Constants.shopid);
  //
  //   int shopIdInt = int.parse(shopId);
  //
  //   try {
  //     Response response = await http.get(
  //         Uri.parse('http://89.117.36.175:8080/Foodcart/getItems'));
  //
  //     if (response.statusCode == 200) {
  //
  //       final responseJson = json.decode(response.body);
  //
  //
  //       GetItemLiist getItemLists = GetItemLiist.fromJson(responseJson);
  //
  //
  //       return getItemLists;
  //     }
  //   } on Exception catch (e) {
  //     debugPrint(e.toString());
  //     return null;
  //   }
  //   return null;
  // }

  static Future<GetItemLiist?> fetchItemsList(context) async {
   var shopId = await SharedUtils.getString(Constants.shopid);
   print("shopId"+shopId.toString());
   int shopIdInt = int.parse(shopId);
    try {
      Response response = await http.get(
          Uri.parse('http://89.117.36.175:8080/Foodcart/getItemsByShopId?shopId=$shopIdInt'));
      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body);
        print(responseJson.toString());
        return GetItemLiist.fromJson(responseJson);
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
    return null;
  }

  static Future<UpdateRoleModel?> updateRoleServices(String uid,String role) async {
    try{

      var response = await http.put(
        Uri.parse("http://89.117.36.175:8080/Foodcart/updateRole?uid=$uid&role=$role"),

      );
      if (response.statusCode == 200) {
        print("sucessssssssss");
        final responseJson = json.decode(response.body);
        return UpdateRoleModel.fromJson(responseJson);
      }
    }
    catch (e) {
      print("error occurred");
     print(e.toString());
    }
    return null;
  }
  static Future<UpdateRoleModel?> updateStatus(String uid,String status) async {
    try{

      var response = await http.put(
        Uri.parse("http://89.117.36.175:8080/Foodcart/updateStatus?uid=$uid&status=$status"),

      );
      if (response.statusCode == 200) {
        print("sUpdate Status ucessssssssss");
        final responseJson = json.decode(response.body);
        return UpdateRoleModel.fromJson(responseJson);
      }
    }
    catch (e) {
      print("error occurred");
     print(e.toString());
    }
    return null;
  }
}