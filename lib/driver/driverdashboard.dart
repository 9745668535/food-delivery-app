import 'package:easy_stepper/easy_stepper.dart';
import 'package:myfoodcart/constants/constants.dart';
import 'package:myfoodcart/resources/buttons.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';

import '../resources/color_resource.dart';
import '../resources/decorations.dart';

class DriverDashBoard extends StatefulWidget {
  const DriverDashBoard({Key? key}) : super(key: key);

  @override
  State<DriverDashBoard> createState() => _DriverDashBoardState();
}

class _DriverDashBoardState extends State<DriverDashBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Decorations.commonAppBar("DashBoard",context),
      backgroundColor: ColorResource.greyLightBody,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Delivery Locations",style: StyleResource.normalBlack(context,20),),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                height: Constants.getHeight(context)/4,
                width: Constants.getWeight(context),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
             DriverButton(text: "View on map",onPressed: (){},),

                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Current Locations",style: StyleResource.normalBlack(context,20),),
                    Text("Change",style: StyleResource.greyHead(context, 15),)


                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,

                  decoration: BoxDecoration(  boxShadow: [
                    Decorations.BoxShadowDecorations(context)
                  ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Trasaco hotel,behind navrongo campus"),
                      ))
              ),
              SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SquareButton(onPressed: (){},text: "52",text2: "Pending",text3: "Orders",),
                  SquareButton(onPressed: (){},text: "32",text2: "Orders",text3: "Completed",),
                  SquareButton(onPressed: (){},text: "5",text2: "Locations",text3: "Covered",),
                ],
              ),
              SizedBox(height: 15,),
              Text("Pending Orders",style: StyleResource.normalBlack(context,20),),
              SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    ListView.separated(separatorBuilder: (BuildContext context,int index){
                      return Divider(height: 1,thickness: 1,color: Colors.grey,);
                    },
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index){
                          return GestureDetector(
                              onTap: () {

                              },
                              child: Column(
                                children: [
                                  Text(
                                   "hggggg",
                                    style: StyleResource
                                        .headBlack(context,12),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(8),

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [

                                        ListView.separated(separatorBuilder: (BuildContext context,int index){
                                          return Divider(height: 1,thickness: 1,color: Colors.grey,);
                                        },
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: 3,
                                            itemBuilder: (context, index){
                                              return GestureDetector(
                                                  onTap: () {

                                                  },
                                                  child:  Row(
                                                    children: [
                                                    Container(
                                                    width: 50,
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image: DecorationImage(
                                                        image: AssetImage(DrawableResource.profileImage),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),

                                                  SizedBox(width: 10,),
                                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Alina Peter",style: StyleResource.headBlack(context, 12),),
                                                          Text("Order id: 3435",style: StyleResource.greyHead(context, 12).copyWith(fontWeight: FontWeight.w500),)
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          DriverButton(
                                                            text: "Call",
                                                            onPressed: () {},
                                                          ),
                                                          DriverButton(
                                                            text: "Success",
                                                            onPressed: () {},
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        }),
                  ],
                ),
              ),





            ],
          ),
        ),
      ),

    );
  }
}
