import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/onboarding_screens/model/AddUserModel.dart';
import 'package:myfoodcart/onboarding_screens/screens/login_screen.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/style_resources.dart';
import 'package:provider/provider.dart';

import '../../dash_home/provider/getItemsProvider.dart';
import '../../dashboard/screens/dashboard.dart';
import '../../resources/drawable_resources.dart';
import '../../utils/utils.dart';
import '../provider/login_provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    zipController.dispose();
    phoneController.dispose();
    super.dispose();
  }
  bool isValidEmail(String value) {
    // Regular expression for email validation
    final RegExp emailRegex =
    RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegex.hasMatch(value);
  }
  bool isValidPhoneNumber(String value) {
    // Regular expression for phone number validation
    final RegExp phoneRegex = RegExp(r'^\d{10}$');
    return phoneRegex.hasMatch(value);
  }
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
                  child: TextFormField(controller: nameController,
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
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Email',
                      labelText: 'user123@gmail.com',
                      labelStyle: StyleResource.greyHead(context, 19),
                      hintStyle: StyleResource.headBlack(context, 18).copyWith(fontWeight: FontWeight.w400,),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      } else if (!isValidEmail(value)) {
                        Utils.showInSnackBar("Please enter vaild email id", context);
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                  child: TextFormField(controller: zipController,
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
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Phone Number',
                      labelText: 'Phone Number',
                      labelStyle: StyleResource.greyHead(context, 19),
                      hintStyle: StyleResource.headBlack(context, 18).copyWith(fontWeight: FontWeight.w400,),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a phone number';
                      } else if (!isValidPhoneNumber(value)) {
                        return 'Please enter a valid phone number';
                      }
                      return null; // Return null if the input is valid
                    },
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
                        // context.read<GetItemsProvider>().getItems(context);

                        if(nameController.text.isNotEmpty &&zipController.text.isNotEmpty && emailController.text.isNotEmpty && phoneController.text.isNotEmpty){
                          AddUserModel addusermodel = new AddUserModel();
                          addusermodel.firstname = nameController.text;
                          addusermodel.lastname = "thomas ";
                          addusermodel.address = " werr";
                          addusermodel.zipcode = zipController.text;;
                          addusermodel.email = emailController.text;
                          addusermodel.mobileno = phoneController.text;
                          addusermodel.altMobileno = "1234567890";
                          addusermodel.pwrd = " ";
                          addusermodel.role = "U";
                          context.read<LoginViewModel>().addUser(context, addusermodel);
                        }
                        else{
                          Utils.showInSnackBar("Please enter all the feilds", context);
                        }



                      }
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Utils.navigateTo(context, LoginScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Log In",style: StyleResource.headBlack(context, 14),),
                      ],
                    ),
                  ),
                ),
              ],
            ),







          ],
        ),
      ),
    );
  }

}
