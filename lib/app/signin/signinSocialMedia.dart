import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:time_tracker/common_widget/custom_elevated.dart';

class SignInSocialMedia extends CustomElevateButton {
  SignInSocialMedia({
    required String text,
    required Color backgroundColor,
    required Color textColor,
    required VoidCallback onPressed,
    required String assetImages,
    double? borderRadius: 2.0,
    double? height: 50,
    double? imageHeight:30,
  }) : super(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(assetImages, height: imageHeight),
        SizedBox(width: 8),
        Text(text, style: TextStyle(color: textColor),),
        Opacity( opacity: 0, child: Image.asset('images/google-logo1.png')),
      ],
    ),
    backgroundColor: backgroundColor,
    onPressed: onPressed,
    borderRadius: borderRadius!,
    height: height!,



  );
}
