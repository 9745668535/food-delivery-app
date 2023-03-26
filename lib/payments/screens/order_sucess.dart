import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/drawable_resources.dart';
import 'package:myfoodcart/resources/style_resources.dart';

import '../../resources/color_resource.dart';
import '../../resources/decorations.dart';

class OrderConfirmation extends StatefulWidget {
  const OrderConfirmation({Key? key}) : super(key: key);

  @override
  State<OrderConfirmation> createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.greyLightBody,
      appBar: Decorations.commonAppBar("Checkout",context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Congratulations..Your order has placed.",style: StyleResource.headBlack(context, 18),),
            SizedBox(height: 20,),
            Image.asset(DrawableResource.deliverytruck,width: 100,height: 100,color: ColorResource.appBackgroundColor,),
            SizedBox(height: 20,),
            Text("It will be delivered at 12.30 pm"),



          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: ColorResource.appBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size( MediaQuery.of(context).size.width/1,70),
              ),
              child:Text("Go To Orders",style: TextStyle(color: Colors.white,fontSize: 15),),
              onPressed: (){





              }
          ),
        ),
      ),

    );
  }
}
