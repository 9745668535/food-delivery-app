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
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index){
          return  InkWell(
            onTap: (){
            context.read<GetItemsProvider>().changeSelectedIndex(index);

            },
            child: Consumer<GetItemsProvider>(
              builder: (context,itemdata,e) {
                return Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                    Decorations.BoxShadowDecorations(context)
                  ],
                      color:itemdata.selectedIndex==index?ColorResource.appBackgroundColor: Colors.white,borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                    child: Text(index==0?"Starters":index==1?"Meals":index==2?"Deserts":index==3?"Beverges"
                   : index==4?"Salads":index==5?"Icecreams":index==6?"Noodles":index==7?"Dishes":"Curries"
                      ,style: StyleResource.headBlack(context, 10).copyWith(fontWeight: FontWeight.w400,color: itemdata.selectedIndex==index?Colors.white:Colors.black),),
                  ),
                );
              }
            ),
          );
        }, separatorBuilder: (BuildContext context,int index){
          return Container(width: 20,);
        }, itemCount:10);
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
    return ListView.separated(
        itemBuilder: (BuildContext context,int index){
          return  Container(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                          child: Image.asset(
                            DrawableResource.food4,
                            fit: BoxFit.cover,
                          ),
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
                          Text("Stuffed mushroom",style: StyleResource.headBlack(context, 15),),
                          Text("E2.99",style: StyleResource.greyHead(context, 10).copyWith(fontWeight: FontWeight.w600),),
                          Text("Veg sallad good for health/\nprepared with variety of vegetables",textAlign: TextAlign.justify,style: StyleResource.greyHead(context, 10),),


                        ],
                      ),
                    ),
                  ],
                ),

                InkWell(
                  onTap: (){
                    context.read<GetItemsProvider>().addSelectedIndex(index);
                  },
                  child: Consumer<GetItemsProvider>(
                    builder: (context,additems,_) {
                      return Container(

                        decoration: BoxDecoration(color: additems.getItemLiist.shopData![index].noOfItem==index?ColorResource.appBackgroundColor:ColorResource.lightOrange,
                            borderRadius: BorderRadius.circular(7),border: Border.all(color: ColorResource.appBackgroundColor,width: 1)),
                        child: Row(
                          crossAxisAlignment:additems.getItemLiist.shopData![index].noOfItem==index?CrossAxisAlignment.center:CrossAxisAlignment.start,
                          children: [
                            additems.getItemLiist.shopData![index].noOfItem==index?  Padding(
                              padding:  EdgeInsets.only(left: additems.getItemLiist.shopData![index].noOfItem==index?8.0:0),
                              child: InkWell(
                                  onTap:(){
                                     context.read<GetItemsProvider>().decrementItemNumber(index);
                                  },
                                  child: Text("-",style: StyleResource.BoldOrange(context, 12).copyWith(color: Colors.white),)),
                            ):Container(),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8),
                              child: Text( additems.getItemLiist.shopData![index].noOfItem==index?additems.getItemLiist.shopData![index].noOfItem.toString():"ADD",style: StyleResource.BoldOrange(context, 14).copyWith(fontWeight: FontWeight.w400, color: additems.getItemLiist.shopData![index].noOfItem==index?Colors.white:ColorResource.appBackgroundColor),),
                            ),
                           Padding(
                                  padding:  EdgeInsets.only(right: additems.getItemLiist.shopData![index].noOfItem==index?8.0:0),
                                  child: InkWell(onTap:(){
                                    additems.getItemLiist.shopData![index].noOfItem==index? context.read<GetItemsProvider>().addItemNumber(index):Container();
                      },
                                      child: Text("+",style: StyleResource.BoldOrange(context, 12).copyWith( color: additems.getItemLiist.shopData![index].noOfItem==index?Colors.white:ColorResource.appBackgroundColor),)),
                                )
                          ],
                        ),
                      );
                    }
                  ),
                ),

              ],
            ),
          );
        }, separatorBuilder: (BuildContext context,int index){
          return Container(width: 20,);
        }, itemCount:10);
  }
}

