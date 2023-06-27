import 'dart:typed_data';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:provider/provider.dart';


import '../../resources/decorations.dart';
import '../../resources/style_resources.dart';
import '../provider/getItemsProvider.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({Key? key}) : super(key: key);

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {

  @override
  void initState() {
    // TODO: implement initState
    int selectedIndex = 0;
    // context.read<GetItemsProvider>().initialzation(context);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<GetItemsProvider>(
      builder: (context,itemdata,e) {

        return itemdata.itemCategoryWithShopId.isEmpty?Center(
          child: Container(height: 30,
              width: 30,
              child: CircularProgressIndicator(color: ColorResource.appBackgroundColor,)),
        ): ListView.separated(scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              return  InkWell(
                onTap: (){
                  context.read<GetItemsProvider>().changeSelectedIndex(index);
                  context.read<GetItemsProvider>().clearAddItemList();
                context.read<GetItemsProvider>().selectedItemCategoryName(itemdata.itemCategoryWithShopId[index].toString());
                print("uuuuuuuuu"+itemdata.itemCategoryWithShopId[index].toString());

                },
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        Decorations.BoxShadowDecorations(context)
                      ],
                      color:itemdata.selectedIndex==index?ColorResource.appBackgroundColor: Colors.white,borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                    child: Text(itemdata.itemCategoryWithShopId.isEmpty?"":itemdata.itemCategoryWithShopId[index].toString()
                      ,style: StyleResource.headBlack(context, 10).copyWith(fontWeight: FontWeight.w400,color: itemdata.selectedIndex==index?Colors.white:Colors.black),),
                  ),
                )
              );
            }, separatorBuilder: (BuildContext context,int index){
              return Container(width: 20,);
            }, itemCount:itemdata.itemCategoryWithShopId.length);
      }
    );
  }
}
class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GetItemsProvider>(
      builder: (context,addItem,e) {
        return  ListView.separated(
            itemBuilder: (BuildContext context,int index){
                return Container(
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              color: Colors.grey,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              child:Image.memory(addItem.selectedIndexItemList[index].img!)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Icon(
                                Icons.radio_button_on_sharp,
                                color: Colors.lightGreen,
                                size: 20,
                              ),
                              Text(addItem.selectedIndexItemList[index].itemName.toString()+addItem.selectedIndexItemList.length.toString(),style: StyleResource.headBlack(context, 15),),
                              Text(addItem.selectedIndexItemList[index].itemDesc.toString(),style: StyleResource.greyHead(context, 10).copyWith(fontWeight: FontWeight.w600),),
                              Text(addItem.selectedIndexItemList[index].itemPrice.toString(),textAlign: TextAlign.justify,style: StyleResource.greyHead(context, 10),),


                            ],
                          ),
                        ),
                      ],
                    ),
                    addItem.getItemList[index] == null ? InkWell(
                      onTap: (){
                        addItem.increment(index);

                      },
                      child: Container(decoration: BoxDecoration(color: ColorResource.lightOrange,borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(addItem.getItemList[index] == null ?"ADD":addItem.getItemList[index].toString()),
                              Text("+")
                            ],
                          ),
                        ),
                      ),
                    )
                        : InkWell(
                      onTap: (){


                      },
                      child: Container(decoration: BoxDecoration(color: ColorResource.lightOrange,borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              InkWell(onTap: (){
                                addItem.decrement(index);
                              },
                                  child: Text("-")),
                              Text(addItem.getItemList[index].toString()),
                              InkWell(
                                  onTap: (){
                                    addItem.increment(index);
                                  },
                                  child: Text("+"))
                            ],
                          ),
                        ),
                      ),
                    )





                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context,int index){
              return Container(width: 20,);
            }, itemCount:addItem.selectedIndexItemList.length);
      }
    );
  }
}



