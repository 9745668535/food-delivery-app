import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/onboarding_screens/screens/otp_screen.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/string_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';
import 'package:myfoodcart/utils/utils.dart';

import '../../resources/buttons.dart';
import '../../resources/drawable_resources.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorResource.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _renderBody(height, width),
            _renderSizedBox(height/14),
            _renderHead(),
            _renderSizedBox(height/12),
            _renderLogin()


          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Column(

          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login as merchant",style: StyleResource.headWithUnderline(context,12),),
                SizedBox(width: 10,),
                Text("Login as driver",style: StyleResource.headWithUnderline(context,12),),
              ],
            ),
            _renderSizedBox(20),
            Column(
              children: [
                Text("By continuing you agree to our"),
                Text("Terms of service Privacy Policy content Policy")
              ],
            ),
          ],
        ),
      ),
    );
  }
  _renderBody(double h,double w){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: h/3,
          width: w,
          decoration: BoxDecoration( color: Colors.red,borderRadius: BorderRadius.circular(10)),
          child: Image.asset(DrawableResource.splash,fit: BoxFit.fill,),

        ),



      ],
    );
  }
  _renderSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
  _renderHead(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(StringResource.appName1+" "+StringResource.appName2,style: StyleResource.loginHead(context,30).copyWith(color: Colors.black)),
        Text(" "+StringResource.appName3,style: StyleResource.loginHead(context,30).copyWith(color: Colors.deepOrange))
      ],
    );
  }
  _renderLogin(){
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(StringResource.loginText,style: StyleResource.loginHead(context, 14).copyWith(fontWeight: FontWeight.w500),),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 10,top: 20),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,

                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(border: InputBorder.none,
                hintText: 'Enter Phone Number',
                contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/3.5),
                hintStyle: StyleResource.loginHead(context, 14).copyWith(fontWeight: FontWeight.w500),
              ),
            
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CommonButton(color: ColorResource.appBackgroundColor,child: Text("Continue",style: TextStyle(color: Colors.white),),onPressed: (){
            Utils.navigateTo(context, OtpScreen());
          },),
        ),
        _renderSizedBox(20),
        Text("Or",style: StyleResource.loginHead(context, 14).copyWith(fontWeight: FontWeight.w500),),
        _renderSizedBox(20),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(child: Image.asset(DrawableResource.google,),onPressed: (){

            }),
            SizedBox(width: 20,),
            RoundButton(child: Image.asset(DrawableResource.mail,),onPressed: (){

            })
          ],
        ),
        _renderSizedBox(20),





      ],
    );
  }

  
}
