import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/buttons.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/utils/utils.dart';

import '../../payments/screens/payment.dart';
import '../../resources/decorations.dart';
import '../../resources/style_resources.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:   InkWell(
      onTap: (){
        Utils.navigateTo(context, PaymentScreens());
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width/1.4,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: ColorResource.appBackgroundColor),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("7.88",style: StyleResource.loginHead(context, 18).copyWith(fontWeight: FontWeight.w400,color: Colors.white),),
                        Text("TOTAL",style: StyleResource.headBold(context, 12).copyWith(color: Colors.white,fontWeight: FontWeight.w300),),
                      ],
                    ),
                    Text("Place Order",style: StyleResource.loginHead(context, 20).copyWith(fontWeight: FontWeight.w400,color: Colors.white)),
                  ],
                ),
              )
            )
          ),
        ],
      ),
    )
      ,
      appBar: Decorations.commonAppBar("Cart",context),
      backgroundColor: ColorResource.greyLightBody,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Decorations.Cards(context,Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text("Delivery",style: StyleResource.headBlack(context,16),),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on,size: 15,color: ColorResource.appBackgroundColor,),
                        SizedBox(width: 10,),
                        Text("Delivery at",style: StyleResource.greyHead(context, 12).copyWith(color: Colors.black),),

                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Row(
                      children: [
                        Icon(Icons.access_time_filled,size: 13,color: ColorResource.appBackgroundColor,),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Text("Delivery in",style: StyleResource.greyHead(context, 12).copyWith(color: Colors.black),),
                            Text(" 42 mins",style: StyleResource.headBold(context, 12).copyWith(color: Colors.black),),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 7,),
                ],

              ),
            )),
            SizedBox(height: 10,),
            Decorations.Cards(context,Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text("Your Order",style: StyleResource.headBlack(context,16),),
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(DrawableResource.radioButton,height: 20,width: 20,color: ColorResource.green,),
                          SizedBox(width: 5,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Plant Protein Bowl",style: StyleResource.loginHead(context, 15).copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Text("8.99",style: StyleResource.greyHead(context, 11),),

                            ],
                          )
                        ],
                      ),
                      Column(crossAxisAlignment:CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),border: Border.all(color: ColorResource.lightOrange2),
                              color: ColorResource.lightOrange
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("-",style: TextStyle(color: ColorResource.appBackgroundColor),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,right: 8,top: 1,bottom: 1),
                                  child: Text("1",style: TextStyle(fontSize: 12),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text("+",style: TextStyle(color: ColorResource.appBackgroundColor),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0,right: 6),
                            child: Text("8.99",style: StyleResource.greyHead(context, 11),),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        child: Text("Add cooking instructions(optional)",
                          style: StyleResource.greyHead(context, 11),
                          textAlign: TextAlign.center,)),
                  )
                ],

              ),
            )),
            SizedBox(height: 10,),
            Decorations.Cards(context,Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text("Offers",style: StyleResource.headBlack(context,16),),
                  ),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(DrawableResource.offers,height: 15,width: 15,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 5,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Select promo code",style: StyleResource.loginHead(context, 11).copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
                              Text("Save 8.99 with code Newrag",style: StyleResource.greyHead(context, 11),),

                            ],
                          )
                        ],
                      ),
                   Text("View Offers",style: StyleResource.loginHead(context, 10).copyWith(color: ColorResource.appBackgroundColor,fontWeight: FontWeight.w400),)
                    ],
                  ),
                  SizedBox(height: 20,),

                ],

              ),
            )),
            SizedBox(height: 10,),
            Decorations.Cards(context,Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text("Bill Summary",style: StyleResource.headBlack(context,16),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Item Total",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),
                            Text("4.09",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Delvery Charge",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),
                            Text("4.09",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Taxes",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),
                            Text("4.09",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Grand Total",style: StyleResource.headBlack(context,16),),
                        Text("4.09",style: StyleResource.greyHead(context, 11).copyWith(fontWeight: FontWeight.w500),),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                ],

              ),
            )),




          ],
        ),
      ),


    );
  }
}
