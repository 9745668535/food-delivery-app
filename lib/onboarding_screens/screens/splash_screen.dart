import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/onboarding_screens/screens/login_screen.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/resources/string_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';
import 'package:myfoodcart/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.8),
        body:_renderBody(height, width),
      floatingActionButton:  InkWell(
        onTap: (){
          Utils.navigateTo(context, LoginScreen());
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0,right: 20,bottom: 30),
          child: Container(
            height: height/13,
            width: width/1.3,
            decoration: BoxDecoration( color: ColorResource.appBackgroundColor,borderRadius: BorderRadius.circular(20)),

            child: Center(child: Text(StringResource.getStarted,style: StyleResource.appHeading(context, 14),)),


    ),
        ),
      ),


    );
  }
  _renderSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
  _renderBody(double h,double w){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: h/3,
          width: w,

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image.asset(DrawableResource.splash,fit: BoxFit.fill,),

        ),
        _renderSizedBox(40),
        _renderHeading(),


      ],
    );
  }
  _renderHeading(){
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(StringResource.appName1,style: StyleResource.appHeading(context,48),),
          Text(StringResource.appName2,style: StyleResource.appHeading(context,48),),
          Text(StringResource.appName3,style: StyleResource.appHeading2(context),),

        ],
      ),
    );
  }
}
