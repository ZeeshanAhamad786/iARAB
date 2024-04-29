import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomSettingScreen extends StatelessWidget {
  final String text;
  final Color? dividerColor;

  CustomSettingScreen({required this.text,  this.dividerColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color(0xff24252B),fontSize: 12.px,fontFamily: "regular"
            ),
          ),
          Divider(
            color: Color(0XFFEDEDED)
          ),
        ],
      ),
    );
  }
}
