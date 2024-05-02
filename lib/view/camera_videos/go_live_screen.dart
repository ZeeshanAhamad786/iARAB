import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/utils/color/custom_color.dart';

class GoLiveScreen extends StatefulWidget {
  const GoLiveScreen({Key? key}) : super(key: key);
  @override
  State<GoLiveScreen> createState() => _GoLiveScreenState();
}
class _GoLiveScreenState extends State<GoLiveScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          GestureDetector(onTap:() {

          },
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/png/simpleImage2.png",fit: BoxFit.cover,))
          ),
          Positioned(
            bottom: 40,left: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,fixedSize: Size(180, 35)),
                onPressed: (){

                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          // Function to check if all checkboxes are selected
                          bool allChecked() {
                            return isChecked1 && isChecked2 && isChecked3 && isChecked4;
                          }

                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 3.h),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                SizedBox(height: 3.h),
                                Text(
                                  "Live Rules",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.px,
                                    fontFamily: "bold",
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  "Our goal is to provide the best LiveStream experience. Agree to all before you host:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.px,
                                    fontFamily: "regular",
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 = true;
                                      isChecked2 = false;
                                      isChecked3 = false;
                                      isChecked4 = false;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: isChecked1
                                            ? Icon(
                                          Icons.check,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                            : null,
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "No Nudity",
                                        style: TextStyle(
                                          fontFamily: "medium",
                                          fontSize: 12.px,
                                          color: CustomColor.mainCustomBlackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 = false;
                                      isChecked2 = true;
                                      isChecked3 = false;
                                      isChecked4 = false;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: isChecked2
                                            ? Icon(
                                          Icons.check,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                            : null,
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "I'm 17+ years old",
                                        style: TextStyle(
                                          fontFamily: "medium",
                                          fontSize: 12.px,
                                          color: CustomColor.mainCustomBlackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 = false;
                                      isChecked2 = false;
                                      isChecked3 = true;
                                      isChecked4 = false;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: isChecked3
                                            ? Icon(
                                          Icons.check,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                            : null,
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "I got it. Let me host a live!",
                                        style: TextStyle(
                                          fontFamily: "medium",
                                          fontSize: 12.px,
                                          color: CustomColor.mainCustomBlackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 = false;
                                      isChecked2 = false;
                                      isChecked3 = false;
                                      isChecked4 = true;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: isChecked4
                                            ? Icon(
                                          Icons.check,
                                          size: 16,
                                          color: Colors.blue,
                                        )
                                            : null,
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        "I will adhere to the Community guidelines",
                                        style: TextStyle(
                                          fontFamily: "medium",
                                          fontSize: 12.px,
                                          color: CustomColor.mainCustomBlackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: allChecked() ? Colors.green : Colors.blue,
                                    fixedSize: Size(180, 35),
                                  ),
                                  onPressed: () {
                                    // Handle button press
                                  },
                                  child: Text(
                                    "I Got it!",
                                    style: TextStyle(
                                      fontSize: 12.px,
                                      fontFamily: "medium",
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                }, child:    Text("Go Live!",style: TextStyle(fontSize: 12.px,fontFamily: "medium",  color: Colors.white),),),
          ),
        ],)
    );
  }
}
