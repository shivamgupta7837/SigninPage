//This is reusable button code

import 'package:flutter/material.dart';
import 'package:ui_basic/CustomWidget.dart';

class CustomSigninButton extends CustomWidget{
  //here making constructor is imp. because we will use widget from th constructor
  CustomSigninButton({
     String? text,
     double? borderRadius,
     Color? color,
     Color? textcolor,
     VoidCallback? onPressed,
     double? fontsize : 15.0,
    double? height,
}):
  super(
    child:Text(text!,style:TextStyle(color:textcolor,fontSize: fontsize),),
    color:color,
    borderRadius:8.0,
    height:height,
    onPressed: onPressed,
  );
}

