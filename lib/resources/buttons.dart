
import 'package:flutter/material.dart';

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

