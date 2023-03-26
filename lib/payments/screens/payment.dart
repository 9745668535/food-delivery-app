import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/payments/screens/order_sucess.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../resources/color_resource.dart';
import '../../resources/decorations.dart';
import '../../resources/style_resources.dart';
import '../../utils/utils.dart';

class PaymentScreens extends StatefulWidget {
  const PaymentScreens({Key? key}) : super(key: key);

  @override
  State<PaymentScreens> createState() => _PaymentScreensState();
}

class _PaymentScreensState extends State<PaymentScreens> {
  String _code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      backgroundColor: ColorResource.greyLightBody,
      appBar: Decorations.commonAppBar("Payment",context),
      body: Stack(alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Decorations.paymentCards(context, Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Cards",style: StyleResource.headBlack(context,16),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.radio_button_checked,size: 20,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(color: ColorResource.subButtons,borderRadius: BorderRadius.circular(7),
                            ),child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Icon(Icons.account_balance_wallet_rounded,color: Colors.white,size: 16,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Credit,Debit & ATM Cards",style: StyleResource.loginHead(context, 12).copyWith(color: Colors.black54),),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                )),
                SizedBox(height: 15,),
                Decorations.paymentCards(context, Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("UPI",style: StyleResource.headBlack(context,16),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.radio_button_off,size: 20,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 10,),
                          Image.asset(DrawableResource.upi,height: 40,width: 30,),
                          SizedBox(width: 10,),
                          Text("Pay via UPI",style: StyleResource.loginHead(context, 12).copyWith(color: Colors.black54),),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                )),
                 SizedBox(height: 15,),
                Decorations.paymentCards(context, Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Wallets",style: StyleResource.headBlack(context,16),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.radio_button_off,size: 20,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 10,),
                          Image.asset(DrawableResource.upi,height: 40,width: 30,),
                          SizedBox(width: 10,),
                          Text("Pay via UPI",style: StyleResource.loginHead(context, 12).copyWith(color: Colors.black54),),

                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.radio_button_off,size: 20,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 10,),
                          Image.asset(DrawableResource.upi,height: 40,width: 30,),
                          SizedBox(width: 10,),
                          Text("Pay via UPI",style: StyleResource.loginHead(context, 12).copyWith(color: Colors.black54),),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                )),
                        SizedBox(height: 15,),
                Decorations.paymentCards(context, Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Net Banking",style: StyleResource.headBlack(context,16),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.radio_button_off,size: 20,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 10,),
                          Image.asset(DrawableResource.upi,height: 40,width: 30,),
                          SizedBox(width: 10,),
                          Text("Pay via UPI",style: StyleResource.loginHead(context, 12).copyWith(color: Colors.black54),),

                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.radio_button_off,size: 20,color: ColorResource.appBackgroundColor,),
                          SizedBox(width: 10,),
                          Image.asset(DrawableResource.upi,height: 40,width: 30,),
                          SizedBox(width: 10,),
                          Text("Net Banking",style: StyleResource.loginHead(context, 12).copyWith(color: Colors.black54),),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                )),




              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 55),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: ColorResource.appBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size( MediaQuery.of(context).size.width/1,70),
                ),
                child:Text("Proceed to payments",style: TextStyle(color: Colors.white,fontSize: 15),),
                onPressed: (){
                  _showCardDetailsBottomSheet();


                }
            ),
          )
        ],
      ),

    );
  }
  void _showCardDetailsBottomSheet() {
    showModalBottomSheet(isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
      topRight: Radius.circular(10),
      topLeft: Radius.circular(10),
    ),),
      
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                color: ColorResource.greyLightBody,),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Enter Card Details",style: StyleResource.headBold(context, 19),),
                    SizedBox(height: 10,),
                    Decorations.cardCards(context, TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 15),
                          hintText: "Card Number",
                          hintStyle: StyleResource.greyHead(context, 12),
                          border: InputBorder.none),

                    ))  ,
                    SizedBox(height: 10,),
                    Decorations.cardCards(context, TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 15),
                          hintText: "Name of Card",
                          hintStyle: StyleResource.greyHead(context, 12),
                          border: InputBorder.none),

                    )),
                    SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    child:       Decorations.cardCards(context, TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 15),
                          hintText: "Expiry date(mm/yy)",
                          hintStyle: StyleResource.greyHead(context, 12),
                          border: InputBorder.none),

                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    child:       Decorations.cardCards(context, TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 15),
                          hintText: "CVV",
                          hintStyle: StyleResource.greyHead(context, 12),
                          border: InputBorder.none),

                    )),
                  ),
                ],
              ),
                    SizedBox(height: 25,),

                    Padding(
                      padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: ColorResource.appBackgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            minimumSize: Size( MediaQuery.of(context).size.width/1,70),
                          ),
                          child:Text("Pay",style: TextStyle(color: Colors.white,fontSize: 15),),
                          onPressed: (){
                            Navigator.pop(context);
                            _showOtpVerificationBottomSheet();



                          }
                      ),
                    ),
                    SizedBox(height: 25,),


                  ],
                ),
              ),
            ),
          );
        });
  }
  void _showOtpVerificationBottomSheet() {
    showModalBottomSheet(isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
      topRight: Radius.circular(10),
      topLeft: Radius.circular(10),
    ),),

        clipBehavior: Clip.antiAlias,
        elevation: 2,
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                color: ColorResource.greyLightBody,),

              child:Column(
                children: [
                  SizedBox(height: 15,),
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
                  Text("00:120 Sec"),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0,right: 25,bottom: 25),
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: ColorResource.appBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          minimumSize: Size( MediaQuery.of(context).size.width/1,70),
                        ),
                        child:Text("Pay",style: TextStyle(color: Colors.white,fontSize: 15),),
                        onPressed: (){
                          Utils.navigateTo(context, OrderConfirmation());




                        }
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              )
            ),
          );
        });
  }
}
