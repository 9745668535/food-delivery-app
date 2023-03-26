import 'dart:async';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:myfoodcart/resources/style_resources.dart';
import '../../resources/color_resource.dart';
import '../../resources/decorations.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.greyLightBody,
      appBar: Decorations.commonAppBar("Order Summary",context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Current Order",style: StyleResource.headBold(context, 14),),
              ),
              SizedBox(height: 10,),
              EasyStepper(unreachedStepTextColor: Colors.black,
                activeStepTextColor: Colors.black,
                finishedStepBackgroundColor: ColorResource.appBackgroundColor,
                finishedStepTextColor: Colors.black,
                showStepBorder: false,
                unreachedStepIconColor: ColorResource.appBackgroundColor,
                activeStepIconColor: ColorResource.appBackgroundColor,
                unreachedStepBorderColor: ColorResource.appBackgroundColor,
                activeStepBorderColor: ColorResource.appBackgroundColor,

                lineSpace: 10,
                lineDotRadius: 1,
                stepRadius: 20,
                lineType: LineType.normal,
                lineColor: Colors.black,
                showLoadingAnimation: false,
                activeStep: activeStep,
                steps: const [

                  EasyStep(
                    icon: Icon(Icons.navigation,color: ColorResource.appBackgroundColor,),
                    title: 'Point 1',
                  ),
                  EasyStep(
                    icon: Icon(Icons.navigation,color: ColorResource.appBackgroundColor,),
                    title: 'Point 2',
                  ),
                  EasyStep(
                    icon: Icon(Icons.navigation,color: ColorResource.appBackgroundColor,),
                    title: 'Point 3',
                  ),
                  EasyStep(
                    icon: Icon(Icons.navigation,color: ColorResource.appBackgroundColor,),
                    title: 'Point 4',
                  ),
                  EasyStep(
                    icon: Icon(Icons.navigation,color: ColorResource.appBackgroundColor,),
                    title: 'Point 1',
                  ),
                  EasyStep(
                    icon: Icon(Icons.navigation,color: ColorResource.appBackgroundColor,),
                    title: ' You',
                  ),
                ],
                onStepReached: (index) => setState(() => activeStep = index),
              ),
              SizedBox(height: 10,),
              Text("Your estimated delivery will be 12.30 p.m",style: StyleResource.headBlack(context, 11).copyWith(fontWeight: FontWeight.w400),),
              SizedBox(height: 20,),
              Decorations.orderCards(context, Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 10,right: 50,bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [


                    Expanded(flex: 1,
                      child: Container(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order id",style: StyleResource.normalBlack(context, 14)),
                          ],
                        ),
                      ),
                    ),
                        Expanded(flex: 1,
                      child: Container(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(":  3455rgrtk45",style: StyleResource.normalBlack(context, 14)),
                          ],
                        ),
                      ),
                    )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [


                        Expanded(flex: 1,
                          child: Container(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Order item",style: StyleResource.normalBlack(context, 14)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 1,
                          child: Container(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(":  Plant Proten Bowl",style: StyleResource.normalBlack(context, 14)),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [


                        Expanded(flex: 1,
                          child: Container(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Amount",style: StyleResource.normalBlack(context, 14)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 1,
                          child: Container(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(":  1223",style: StyleResource.normalBlack(context, 14)),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [


                        Expanded(flex: 1,
                          child: Container(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Delivery Point",style: StyleResource.normalBlack(context, 14)),
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 1,
                          child: Container(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(":  Point 9",style: StyleResource.normalBlack(context, 14)),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),

                  ],
                ),
              )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Previous Order",style: StyleResource.headBold(context, 14),),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height/1.7,
                child: ListView.separated(physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context,int index){
                  return  SizedBox(height: 10,);
                },
                    itemCount: 12,
                    itemBuilder: (BuildContext context,int index){
                  return Decorations.orderCards(context, Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 10,right: 50,bottom: 10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [


                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Date",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(":  08/02/2023",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [


                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Order id",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(":  3455rgrtk45",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [


                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Order item",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(":  Plant Proten Bowl",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),

                        SizedBox(height: 10,),
                        Row(
                          children: [


                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Amount",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(":  1223",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [


                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Delivery Point",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex: 1,
                              child: Container(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(":  Point 9",style: StyleResource.normalBlack(context, 14)),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Mark Your Ratings",style: StyleResource.headBold(context, 14).copyWith(color: ColorResource.appBackgroundColor),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(flex:6,
                              child: Container(
                                child: RatingBar.builder(itemSize: 30,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star_border,
                                    color: ColorResource.appBackgroundColor,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ),
                            Expanded(flex: 2,
                              child: Container(decoration: BoxDecoration(color: ColorResource.appBackgroundColor,
                                  borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(child: Text("Submit",style: StyleResource.appHeading(context, 12).copyWith(color: Colors.white),)),
                                ),
                              ),
                            )
                          ],
                        ),


                      ],
                    ),
                  ));
                }),
              )



            ],
          ),
        ),
      ),
    );
  }
}
