import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:time_tracker/common_widget/custom_elevated.dart';

class SignInButton extends CustomElevateButton {
  SignInButton( {
    required String text,
    required Color backgroundColor,
    required Color textColor,
    required VoidCallback onPressed,
    double? borderRadius: 2.0,
    double? height: 50,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          backgroundColor: backgroundColor,
          onPressed: onPressed,
          borderRadius: borderRadius!,
          height: height!,



        );
}
