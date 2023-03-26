import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/style_resources.dart';

import '../../dashboard/screens/dashboard.dart';
import '../../resources/drawable_resources.dart';
import '../../utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h/3,
              width: w,
              decoration: BoxDecoration( color: Colors.red,borderRadius: BorderRadius.circular(10)),
              child: Image.asset(DrawableResource.splash,fit: BoxFit.fill,),

            ),
            Container(height: 50,
              width: w,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)
              )),
              child: Padding(
                padding:  EdgeInsets.only(left: h/10,top: 12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Sign-up",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 5,
                      width: w/5,
                      color: ColorResource.appBackgroundColor,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ) ,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),

                        hintText: 'User',
                        labelText: 'Name',
                        labelStyle: StyleResource.greyHead(context, 19),
                        hintStyle: StyleResource.headBlack(context, 18).copyWith(fontWeight: FontWeight.w400,)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ) ,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),

                        hintText: 'Email',
                        labelText: 'user123@gmail.com',
                        labelStyle: StyleResource.greyHead(context, 19),
                        hintStyle: StyleResource.headBlack(context, 18).copyWith(fontWeight: FontWeight.w400,)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ) ,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),

                        hintText: 'Zip Code',
                        labelText: 'GUI6 7HF',
                        labelStyle: StyleResource.greyHead(context, 19),
                        hintStyle: StyleResource.headBlack(context, 18).copyWith(fontWeight: FontWeight.w400,)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(

                      focusedBorder:UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ) ,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Delivery point',
                      labelStyle: StyleResource.greyHead(context, 19),
                    ),
                    items: <String>[
                      'Trasaco hotel, behind navrongo',
                      'Another option',
                      'Yet another option',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {


                    },
                  ),
                ),

                SizedBox(height: 10,),

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
                      child:Text("Login",style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        Utils.navigateTo(context, DashBoard());

                      }
                  ),
                )
              ],
            ),







          ],
        ),
      ),
    );
  }

}
