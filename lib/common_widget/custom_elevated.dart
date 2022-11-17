import 'package:flutter/material.dart';

class CustomElevateButton extends StatelessWidget {
  CustomElevateButton(
      { required this.child, required this.onPressed, required this.backgroundColor, required this.borderRadius, required this.height});
  final Widget child;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStatePropertyAll(4.0),
          shadowColor: MaterialStatePropertyAll(Colors.black54),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
        ),
        onPressed: () {
          onPressed;
        },
        child: child,
      ),
    );
  }
}
