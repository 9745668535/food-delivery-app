import 'package:easy_stepper/easy_stepper.dart';
import 'package:myfoodcart/onboarding_screens/model/AddUserModel.dart';
import 'package:myfoodcart/onboarding_screens/model/login_model.dart';
import 'package:myfoodcart/onboarding_screens/screens/sign_up.dart';
import 'package:myfoodcart/utils/utils.dart';

import '../../dashboard/screens/dashboard.dart';
import '../../onboarding_screens/services/login_services.dart';



class LoginViewModel extends ChangeNotifier{
  String? mobileNumber;
  validateLogin(BuildContext context, String mobileNumber){
    if(mobileNumber.isEmpty){
      Utils.showInSnackBar("Please enter the Mobile Number", context);
    }
    Utils.showProgress(context);
    LoginServices.fetchLoginData(mobileNumber, context).then((result) {
      Utils.hideProgress(context);
      if (result != null) {
        LoginResponse.saveClient(result);
        if(result.status=="Success"&&result.msg!="No merchant found"){
          Utils.navigateTo(context, DashBoard());
        }
        if(result.status=="Success"&&result.msg=="No merchant found"){
          Utils.showInSnackBar("No Merchant Found", context);
          // Utils.navigateTo(context, SignUp());
        }
        if(result.status=="Failed"){
          Utils.showInSnackBar("Invalid Phone Number.Please Sign In", context);
           Utils.navigateTo(context, SignUp());
        }
        if(result.status=="Error"){
          Utils.showInSnackBar(result.msg.toString(), context);
           Utils.navigateTo(context, DashBoard());

        }


      }

    });
    notifyListeners();
  }
  addUser(BuildContext context,AddUserModel addUserModel ){
    Utils.showProgress(context);
    LoginServices.addUser(addUserModel, context).then((result) {
      Utils.hideProgress(context);
      if (result != null) {


         if(result.status=="Success"){
           Utils.navigateTo(context, DashBoard());
         }
         if(result.status=="Failed"){
           Utils.showInSnackBar("SignUp Failed due to required values not found", context);
         }
      }
      else{
        print("RESULT$result");

      }
      //Utils.hideProgress(context);
    });
    notifyListeners();
  }
}