
import 'package:flutter/material.dart';
import 'package:myfoodcart/resources/color_resource.dart';
import 'package:myfoodcart/resources/style_resources.dart';

import 'decorations.dart';

class CommonButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final Widget? child;
  final double? height;
  final double? width;
  const CommonButton({Key? key,this.onPressed,this.color, this.child,this.height,this.width}) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: TextButton.styleFrom(
        backgroundColor: widget.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
         minimumSize: Size( MediaQuery.of(context).size.width/1,40),
      ),
      child: widget.child!,
      onPressed: widget.onPressed,
    );
  }
}

class RoundButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  const RoundButton({Key? key,this.child,this.onPressed}) : super(key: key);

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: IconButton(
        icon: widget.child!,
        onPressed: widget.onPressed,
      ),
    );
  }
}
class DriverButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? text;

  const DriverButton({Key? key,this.text,this.onPressed}) : super(key: key);

  @override
  State<DriverButton> createState() => _DriverButtonState();
}

class _DriverButtonState extends State<DriverButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onPressed;
      },
      child: Container(
        height: 25,
          width: 60,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorResource.appBackgroundColor,
        ),
        child:Center(child: Text(widget.text!,style: StyleResource.appHeading(context,15),))
      ),
    );
  }
}
class SquareButton extends StatefulWidget {
  final String? text;
  final String? text2;
  final String? text3;
  final VoidCallback? onPressed;

  const SquareButton({this.text,this.text2,this.text3,this.onPressed,Key? key}) : super(key: key);

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 15,bottom: 15),
      child: Column(
        children: [
          Text(widget.text!,style: StyleResource.BoldOrange(context,25),),
          Text(widget.text2!,style: StyleResource.headBlack(context, 12),),
          Text(widget.text3!,style: StyleResource.headBlack(context, 12),)
        ],
      ),
    ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          Decorations.BoxShadowDecorations(context)
        ],

      ),
    );
  }
}



