import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/decorations.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';
import 'package:myfoodcart/utils/utils.dart';
import '../../dash_cart/screens/cart_page.dart';
import 'delivery_point.dart';
import 'item_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [

    DrawableResource.food2,
    DrawableResource.food4,

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 3.0,right: 3),
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorResource.appBackgroundColor
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("1 ITEM",style: StyleResource.normalBlack(context, 10).copyWith(color: Colors.white),),
                    Text("e3.99 plus taxes",style: StyleResource.normalBlack(context, 7).copyWith(color: Colors.white),)

                  ],
                ),
                  InkWell(onTap: (){
                    Utils.navigateTo(context, CartPage());
                  },
                      child: Text("Proceed",style: StyleResource.normalBlack(context, 10).copyWith(color: Colors.white),)),
              ],),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorResource.orangeButtton,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Utils.navigateTo(context, DeliveryPoint());
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Delivery Point",
                                    style: StyleResource.headBold(context, 14)
                                        .copyWith(fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Transaco hotel,behind navrongo campus",
                              style: StyleResource.greyHead(context, 12)
                                  .copyWith(fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.account_circle,
                      color: ColorResource.orangeButtton,
                      size: 40,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.black.withOpacity(0.05), //New
                          blurRadius: 7)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      hintStyle: StyleResource.greyHead(context, 14)
                          .copyWith(color: ColorResource.grey),
                      hintText: 'Search Products',
                      prefixIcon: Icon(
                        Icons.search,
                        color: ColorResource.orangeButtton,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: ColorResource.orangeButtton,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            Decorations.BoxShadowDecorations(context)
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.asset(
                            DrawableResource.food1,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            Decorations.BoxShadowDecorations(context)
                          ],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Carters of Moseley",
                                    style: StyleResource.headBold(context, 12)
                                        .copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "British cooking",
                                    style: StyleResource.greyHead(context, 10)
                                        .copyWith(
                                            color: ColorResource.greyLight),
                                  )
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: ColorResource.greenDark,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        "4.3",
                                        style: StyleResource.loginHead(
                                                context, 10)
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 10,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Great Deals",
                  style: StyleResource.headBold(context, 18),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              _renderSlider(),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Products",
                  style: StyleResource.headBold(context, 18),
                ),
              ),

              _renderTabBar(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: ItemListScreen()),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/3,
                    child: Items()),
              )
            ],
          ),
        ),
      ),
    );
  }

  _renderSlider() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 7 / 2,
        enlargeCenterPage: false,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width / 1.3,
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
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  _renderTabBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(3, 2),
                blurRadius: 1,
                spreadRadius: 0,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                        boxShadow: [Decorations.BoxShadowDecorations(context)],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.radio_button_on_sharp,
                          color: Colors.lightGreen,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Veg",
                          style: StyleResource.greyHead(context, 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                        boxShadow: [Decorations.BoxShadowDecorations(context)],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.radio_button_on_sharp,
                          color: Colors.red,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Non veg",
                          style: StyleResource.greyHead(context, 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
