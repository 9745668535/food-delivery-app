import 'dart:convert';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:myfoodcart/dash_home/services/getItemServices.dart';

import '../models/add_item_model.dart';
import '../models/getItemModel.dart';
import '../models/get_item_list.dart';
import 'dart:typed_data';

class GetItemsProvider extends ChangeNotifier {
  int selectedIndex = 0;
  GetItemLiist getItemLiist = new GetItemLiist();
  ShopItemList getItemLists = new ShopItemList(items: []);
  String? selectedItemCategory = " ";
  List<ShopItem> addedItemList = [];
  Item addItemToList = new Item();
  List<String?> itemCategoryWithShopId = [];
  List<ShopDatum> selectedIndexItemList = [];

  // Set<String> itemCategoryWithShopId = Set<String>();

  int tapAddButton = 0;
  List<dynamic> getItemList = [
    null,
    null,
    null,
    null,
    null,
    null,
  ];

  getItemsList(BuildContext context) {
    GetItemsServices.fetchItemsList(context).then((result) {
      getItemLiist = result!;
      notifyListeners();
      for (int i = 0; i < getItemLiist.shopData!.length; i++) {
        print("length" + getItemLiist.shopData!.length.toString());
        itemCategoryWithShopId.add(getItemLiist.shopData![i].itemCategory.toString());
      }
      itemCategoryWithShopId = itemCategoryWithShopId.toSet().toList();
      print("itemCategoryWithShopId" + itemCategoryWithShopId.toString());
      print("itemCategoryWithShopIdselectedItemCategory" + itemCategoryWithShopId.toString());
      print("getItem_List_shopData_length" + selectedItemCategory.toString());


    });
    notifyListeners();
  }
  initialzation(BuildContext context){
    selectedItemCategory = "Beverages";
    notifyListeners();
  }

  updateRole(String uid, String role) {
    GetItemsServices.updateRoleServices(uid, role).then((result) {
      if (result != null) {}
      //Utils.hideProgress(context);
    });
    notifyListeners();
  }

   selectedItemCategoryName(String selectedCategoryItem) {
    selectedItemCategory = selectedCategoryItem;
    print("selectedItemCategory"+selectedItemCategory.toString());
    selectedIndexItemList.clear();
    if(selectedItemCategory!=null){
      for(int i = 0;i<getItemLiist.shopData!.length; i++){
        if(getItemLiist.shopData![i].itemCategory==selectedItemCategory){
          selectedIndexItemList.add(getItemLiist.shopData![i]);
          print("selectedIndexItemList"+selectedIndexItemList.toString());
          String base64Image = getItemLiist.shopData![i].imageLoc.toString();
          Uint8List imageBytes = base64Decode(base64Image);
          selectedIndexItemList[i].img = imageBytes;
        }
      }
    }
    else{
      print("not Item Added");
    }
    notifyListeners();
  }

  clearAddItemList() {
    addedItemList.clear();
    notifyListeners();
  }

  changeSelectedIndex(
    int value,
  ) {
    selectedIndex = value;

    print("selectedIndex" + value.toString());

    notifyListeners();
  }

  // addSelectedIndex(int index){
  //   getItemLiist.shopData![index].addTap = index;
  //    getItemList.add(index);
  //    notifyListeners();
  // }
  // addItemNumber(int index){
  //   if(getItemLiist.shopData![index].addTap==null){
  //     getItemLiist.shopData![index].addTap  = 1;
  //   }
  //   else{
  //     getItemLiist.shopData![index].addTap!+1;
  //   }
  //
  //   notifyListeners();
  // }

  increment(int index) {
    if (getItemList[index] == null) {
      getItemList[index] = 1;
    } else {
      getItemList[index] += 1;
    }
    notifyListeners();
  }

  decrement(int index) {
    if (getItemList[index] == null) {
      getItemList[index] = 1;
    } else if (getItemList[index] == 0) {
      getItemList[index] = null;
    } else {
      getItemList[index] -= 1;
    }
    notifyListeners();
  }
}
