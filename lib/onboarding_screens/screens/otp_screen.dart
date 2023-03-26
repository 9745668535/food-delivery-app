import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/dashboard/screens/dashboard.dart';
import 'package:myfoodcart/onboarding_screens/screens/sign_up.dart';
import 'package:myfoodcart/resources/buttons.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';
import 'package:myfoodcart/utils/utils.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(DrawableResource.otp,fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 20,),
              Text("OTP VERIFICATION",style: StyleResource.headBold(context,20),),
              SizedBox(height: 15,),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Enter the OTP sent to ', style: StyleResource.greyHead(context, 15)),
                    TextSpan(text: ' +44 897650001', style: StyleResource.headBold(context,15)),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              OTPTextField(
                otpFieldStyle: OtpFieldStyle(errorBorderColor: Colors.white,
                    enabledBorderColor: Colors.white,
                    disabledBorderColor: Colors.white,
                    focusBorderColor: Colors.white,
                  borderColor: Colors.white,
                  backgroundColor: Colors.white),
                obscureText: false,
                length: 4,
                width: 275,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  _code=pin;
                  print("Completed: " + pin);
                },
              ),
              SizedBox(height: 30,),
              Text("00:120"),
              SizedBox(height: 30,),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "Don't  receive code ? ", style: StyleResource.greyHead(context, 15)),
                    TextSpan(text: 'Re-send', style: StyleResource.headBold(context,15)),
                  ],
                ),
              ),
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                style: TextButton.styleFrom(
                backgroundColor: ColorResource.appBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size( MediaQuery.of(context).size.width/1,40),
                ),
        child:Text("Continue",style: TextStyle(color: Colors.white),),
        onPressed: (){
                  Utils.navigateTo(context, SignUp());

        }
      ),
              )








            ],
          ),
        ),
      ),


    );
  }

  _renderContinueButton(){
    return CommonButton(child: Text("Continue",style: TextStyle(color: Colors.white),),onPressed: (){
      Utils.navigateTo(context, DashBoard());
    },color: ColorResource.appBackgroundColor,);
  }
}

