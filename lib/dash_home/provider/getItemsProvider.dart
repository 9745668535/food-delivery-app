import 'package:easy_stepper/easy_stepper.dart';
import 'package:myfoodcart/dash_home/services/getItemServices.dart';

import '../models/get_item_list.dart';

class GetItemsProvider extends ChangeNotifier{
  int selectedIndex = 0;
  GetItemLiist getItemLiist = new GetItemLiist();
  late int additem;



  getItems(BuildContext context){
   GetItemsServices.fetchItems(context).then((result){
     if(result !=null){
       print("sucesss");
       print("aaaaaaaaaaaaaaaaaaaaaaaaaaaa$result");
     }
   });
   notifyListeners();
  }
  getItemsList(BuildContext context){
   GetItemsServices.fetchItemsList(context).then((result){
    // if(result !=null){
     getItemLiist = result!;
     notifyListeners();
       print("get Item List Sucessfully Fetched");
       print("get Item List Sucessfully Fetched$result");
   //  }
   });

  }
  updateRole(String uid,String role){

    GetItemsServices.updateRoleServices(uid, role).then((result) {
      if (result != null) {
        print("sucessssssssssssssssssss");
       print("result"+result.msg.toString());
      }
      //Utils.hideProgress(context);
    });
    notifyListeners();
  }
  changeSelectedIndex(int value){
    selectedIndex = value;
    notifyListeners();
  }
  addSelectedIndex(int index){
    additem = getItemLiist.shopData![index].noOfItem!;
    print("addItem"+additem.toString());
    additem= index;
    notifyListeners();
  }
  addItemNumber(int index){
    getItemLiist.shopData![index].noOfItem!+1;
    notifyListeners();
  }

  decrementItemNumber(int index){
    getItemLiist.shopData![index].noOfItem! -1;
    notifyListeners();
  }



}
