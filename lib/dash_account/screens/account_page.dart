import 'package:easy_stepper/easy_stepper.dart';
import 'package:myfoodcart/onboarding_screens/screens/login_screen.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';
import 'package:myfoodcart/utils/shared_utils.dart';
import 'package:myfoodcart/utils/utils.dart';

import '../../resources/color_resource.dart';
import '../../resources/decorations.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  // Usage example
  void logout() async {
    // Perform any other logout-related tasks here

    // Clear shared preferences values
    await SharedUtils.clearSharedPreferences();
    Utils.navigateAndReplace(context, LoginScreen());

    // Navigate to login screen or any other desired screen
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.greyLightBody,
     appBar: Decorations.commonAppBar("Account",context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Decorations.orderCards(context, Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Profile",style: StyleResource.headBlack(context, 12),),
                        Text("Change",style: StyleResource.headBlack(context, 12).copyWith(color: ColorResource.subButtons),)

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                      Container(height: 70,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                          color: Colors.orange,
                         ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(DrawableResource.splash,fit: BoxFit.cover,),
                        )
                      ),
                        SizedBox(width: 20,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User",style: StyleResource.headBlack(context, 17),),
                            SizedBox(height: 10,),
                            Text("user123@gmail.com",style: StyleResource.greyHead(context, 13).copyWith(fontWeight: FontWeight.w400),),
                            SizedBox(height: 10,),
                            Text("+23345688876",style: StyleResource.greyHead(context, 13).copyWith(fontWeight: FontWeight.w400),),
                            SizedBox(height: 10,),
                            Text("Transco hotel,behind navrongo",style: StyleResource.greyHead(context, 13).copyWith(fontWeight: FontWeight.w400),),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
              SizedBox(height: 20,),
              Decorations.accountCards(context, "Orders"),
              SizedBox(height: 20,),
              Decorations.accountCards(context, "About"),
              SizedBox(height: 20,),
              Decorations.accountCards(context, "Contact"),
              SizedBox(height: 20,),
              Decorations.accountCards(context, "Send Feedback"),
              SizedBox(height: 20,),
              Decorations.accountCards(context, "Rate us on playstore"),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  logout();

                },
                child: Decorations.accountCards(context, "Logout"),
              )
            ],
          ),
        ),
      ),


    );
  }
}
