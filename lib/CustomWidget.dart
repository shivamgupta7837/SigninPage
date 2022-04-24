import 'package:flutter/material.dart';



class CustomWidget extends StatelessWidget {
   const CustomWidget({required this.child,required this.color,required this.borderRadius,required this.onPressed});

  final Widget child;
  final Color? color;
  final double borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),),
      onPressed: onPressed,
      child: child,
    );
  }
}
