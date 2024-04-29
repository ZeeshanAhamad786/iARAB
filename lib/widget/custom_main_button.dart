import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class CustomMainButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? buttonColor;

  // final  RxBool? loading;

  CustomMainButton({
    required this.buttonText,
    required this.onPressed,
    this.buttonColor,
    // this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(23.h, 5.h),
        backgroundColor: buttonColor, // Button color

        // Text color
      ),
      child: Text(buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontFamily: "bold",
          )),
    );
  }
}
