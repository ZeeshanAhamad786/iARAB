import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../utils/color/custom_color.dart';

class RechargeScreen extends StatefulWidget {
  RechargeScreen({Key? key}) : super(key: key);

  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {
  List<Map<String, String>> data = [
    {"text": "100", "dollar": "\$1.28"},
    {"text": "250", "dollar": "\$3.20"},
    {"text": "500", "dollar": "\$6.40"},
    {"text": "1000", "dollar": "\$12.80"},
    {"text": "2000", "dollar": "\$25.60"},
    {"text": "5000", "dollar": "\$64.00"},
    {"text": "1000", "dollar": "\$128.00"},
  ];
  int selectedContainer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: CustomColor.mainCustomBlackBoldColor.withOpacity(0.1),
                offset: Offset(0, 2),
                blurRadius: 4)
          ], color: Colors.white),
          child: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new_outlined)),
            automaticallyImplyLeading: false,
            title: Text(
              "Recharge",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "medium",
                  fontSize: 17.sp),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 7.h,
            ),
            Center(
              child: Text(
                "Coin Balance",
                style: TextStyle(
                    fontFamily: "bold",
                    fontSize: 12.px,
                    color: CustomColor.mainGreyColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/coin.svg",
                  height: 32,
                  width: 32,
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  "1200",
                  style: TextStyle(
                      fontFamily: "bold",
                      fontSize: 32.px,
                      color: CustomColor.mainCustomBlackBoldColor),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "Buy coin",
              style: TextStyle(
                  fontSize: 14.px,
                  fontFamily: "bold",
                  color: CustomColor.mainGreyColor),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainer = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffFFE4EA),
                            blurRadius: 8,
                            offset: Offset(0, 1),
                          )
                        ],
                        color: index == selectedContainer
                            ? CustomColor.mainPinkColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 10),
                          SvgPicture.asset(
                            "assets/svg/coin.svg",
                          ),
                          Text(
                            data[index]["text"]!,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "bold",
                              color: index == selectedContainer
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          Container(
                            height: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: index == selectedContainer
                                    ? CustomColor.mainPinkColor
                                    : Colors.white,
                                backgroundColor: index == selectedContainer
                                    ? Colors.white
                                    : CustomColor.mainPinkColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                data[index]["dollar"]!,
                                style: TextStyle(
                                  color: index == selectedContainer
                                      ? CustomColor.mainPinkColor
                                      : Colors.white,
                                  fontFamily: "regular",
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Container(
                height: 35,
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.mainColor,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.h),
                          height: 400,
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              Container(
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColor.mainPinkColor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffCBD0DC))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "Card Number",
                                      labelStyle: TextStyle(
                                          fontFamily: "medium",
                                          fontSize: 13.px,
                                          color: Color(0xffCBD0DC)),
                                      suffixIcon: Transform.scale(
                                          scale: 0.6,
                                          child: SvgPicture.asset(
                                              "assets/svg/card.svg")),
                                      contentPadding: EdgeInsets.all(6)),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20),
                                        Container(
                                          height: 40,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: CustomColor
                                                                .mainPinkColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCBD0DC))),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: "MM/YY",
                                                labelStyle: TextStyle(
                                                    fontFamily: "medium",
                                                    fontSize: 13.px,
                                                    color: Color(0xffCBD0DC)),
                                                suffixIcon: Transform.scale(
                                                    scale: 0.6,
                                                    child: SvgPicture.asset(
                                                      "assets/svg/calendar.svg",
                                                    )),
                                                contentPadding:
                                                    EdgeInsets.all(6)),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  // Add spacing between the fields
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20),
                                        Container(
                                          height: 40,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: CustomColor
                                                                .mainPinkColor),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffCBD0DC))),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                labelText: "CCV",
                                                labelStyle: TextStyle(
                                                    fontFamily: "medium",
                                                    fontSize: 13.px,
                                                    color: Color(0xffCBD0DC)),
                                                suffixIcon: Transform.scale(
                                                    scale: 0.6,
                                                    child: SvgPicture.asset(
                                                      "assets/svg/watch.svg",
                                                      height: 14,
                                                      width: 14,
                                                    )),
                                                contentPadding:
                                                    EdgeInsets.all(6)),
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Container(
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColor.mainPinkColor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffCBD0DC))),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      labelText: "Cardholder's Name",
                                      labelStyle: TextStyle(
                                          fontFamily: "medium",
                                          fontSize: 13.px,
                                          color: Color(0xffCBD0DC)),
                                      contentPadding: EdgeInsets.all(6)),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),

                              SizedBox(height: 4.h),
                              // Adjust the spacing as needed
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Column(
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child:  GestureDetector(onTap: () {
                                                  Get.back();
                                                },
                                                  child: SvgPicture.asset(
                                                      "assets/svg/cancel.svg"),
                                                ),
                                            ),
                                            SvgPicture.asset(
                                                "assets/svg/tick.svg"),
                                          ],
                                        ),
                                        content: Text(
                                          """Your request in the queue has been withdrawn as per your instruction. Please note that it may take up to 48 hours for the withdrawal to be fully processed.""",
                                          style: TextStyle(
                                              fontSize: 12.px,
                                              fontFamily: "regular",
                                              color: CustomColor
                                                  .mainCustomSetting1Color),
                                        ),
                                        actions: <Widget>[
                                          // TextButton(
                                          //   onPressed: () {
                                          //     Navigator.of(context).pop();
                                          //   },
                                          //   child: Text("Close"),
                                          // ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.5,
                                      ),
                                    ],
                                    color: Color(0xffAC83F6),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Withdraw",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.px,
                                          fontFamily: "regular"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Recharge",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "regular",
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
              width: 2.h,
            )
          ],
        ),
      ),
    );
  }
}
