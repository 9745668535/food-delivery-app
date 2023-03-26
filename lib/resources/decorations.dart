import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/style_resources.dart';

import 'color_resource.dart';

class Decorations{


  static BoxShadow  BoxShadowDecorations(BuildContext context){
    return BoxShadow(
      color: ColorResource.appBackgroundColor.withOpacity(.2),
      offset: Offset(3, 2),
      blurRadius: 1,
      spreadRadius: 0,
    );

}

static commonAppBar(String title,BuildContext context){
    return AppBar(leadingWidth: 10,
      centerTitle: true,
      elevation: 0,
      backgroundColor: ColorResource.greyLightBody,
      title: Text(title,style: TextStyle(color: Colors.black,fontSize: 18),),
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(Icons.arrow_back_ios_new,color: Colors.black54,size: 17),
        ),
      ),

    );
}
static Cards(BuildContext context,Widget widgets){
    return  Container(
      width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
        Decorations.BoxShadowDecorations(context)
      ],
          color: Colors.white,borderRadius: BorderRadius.circular(10)),
      child: widgets

    );
}
static paymentCards(BuildContext context,Widget widgets){
    return  Container(
      width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
        Decorations.BoxShadowDecorations(context)
      ],
          color: Colors.white,borderRadius: BorderRadius.circular(20)),
      child: widgets

    );
}static cardCards(BuildContext context,Widget widgets){
    return  Container(
      height: 40,

        decoration: BoxDecoration(boxShadow: [
        Decorations.BoxShadowDecorations(context)
      ],
          color: Colors.white,borderRadius: BorderRadius.circular(10)),
      child: widgets

    );
}
static orderCards(BuildContext context,Widget widgets){
    return  Container(


        decoration: BoxDecoration(boxShadow: [
        Decorations.BoxShadowDecorations(context)
      ],
          color: Colors.white,borderRadius: BorderRadius.circular(10)),
      child: widgets

    );
}
static accountCards(BuildContext context,String text){
    return  Container(


        decoration: BoxDecoration(boxShadow: [
        Decorations.BoxShadowDecorations(context)
      ],
          color: Colors.white,borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: StyleResource.headBlack(context, 13),),
            Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
          ],
        ),
      )

    );
}
}