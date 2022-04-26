//  !! With the help of this class we can make buttons by using its constructor
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final double? height;

   const CustomWidget({
     this.child,
     this.color,
     this.height:40.0,
     this.borderRadius:8.0,
     this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,//this height is visible in box
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!)),),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
