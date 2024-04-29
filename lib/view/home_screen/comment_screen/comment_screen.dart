import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';

void showCommentBottomSheet(BuildContext context, Function(List<Map<String, String>>) setStateCallback) {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List<Map<String, String>> filedata = [
    {
      'name': 'Chuks Okwuenu',
      'pic': 'assets/png/molviprofile.png',
      'message': 'I love to code',
      'like': 'assets/png/heart.png',
      'value': '26.45k',
      'time': 'now',
      'reply': 'reply',
    },
    {
      'name': 'Biggi Man',
      'pic': "assets/png/IARABPNGICON'.png",
      'message': 'Very cool',
      'like': 'assets/png/emptyheart.png',
      'value': '6.5k',
      'time': '8:30 am',
      'reply': 'reply',
    },
    {
      'name': 'Tunde Martins',
      'pic': 'assets/png/molviprofile.png',
      'message': 'Very cool',
      'like': 'assets/png/emptyheart.png',
      'value': '2.45k',
      'time': 'now',
      'reply': 'reply',
    },
    {
      'name': 'Biggi Man',
      'pic': "assets/png/IARABPNGICON'.png",
      'message': 'Very cool',
      'like': 'assets/png/heart.png',
      'value': '26.45k',
      'time': '10:30 pm',
      'reply': 'reply',
    },
  ];

  Widget commentChild(List<Map<String, String>> data) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: CircleAvatar(
                    backgroundImage: AssetImage(data[i]['pic']!)),
              ),
              title: Text(
                data[i]['name']!,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: "regular",
                  color: CustomColor.mainCustomGreyColor,
                ),
              ),
              subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data[i]['message']!,
                    style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: "regular",
                    color: CustomColor.mainCustomBlackColor,
                  )),
                  Row(
                    children: [
                      Text(data[i]['time']!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomGreyColor,
                        ),
                      ),
                      SizedBox(width: 2.w,),
                      Text(data[i]['reply']!,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomBlack1Color,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Column(crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset(data[i]["like"]!,height: 20,width: 20,),

                  Text(data[i]['value']!,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: "regular",
                      color: CustomColor.mainGreyColor,

                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return SingleChildScrollView(
            child: Container(
              color:  Colors.white,
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75, // Set a fixed height
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 3.h,),
                  // Divider(
                  //   color: CustomColor.mainGreyColor,
                  //   thickness: 3,
                  // ),
                  Text(
                    'Comments (${filedata.length})',
                    style: TextStyle(
                      fontFamily: "medium",
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: commentChild(filedata),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000).withOpacity(0.12),
                          blurRadius: 8,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              style: TextStyle(fontSize: 13),
                              controller: commentController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type your message',
                                hintStyle: TextStyle(
                                  fontSize: 10,
                                  color: const Color(0xff757575),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: SvgPicture.asset(
                              "assets/svg/commentshare.svg",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}



