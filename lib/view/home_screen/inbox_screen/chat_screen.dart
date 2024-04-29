import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/color/custom_color.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<dynamic> messagesListDemo = [
    const BubbleSpecialThree(
      text: 'Fine',
      color: CustomColor.mainPinkColor,
      tail: false,
      textStyle: TextStyle(color: Colors.white, fontSize: 12),
    ),
    const BubbleSpecialThree(
      text: 'What\'s up',
      color: Color(0xFFE8E8EE),
      tail: false,
      isSender: false,
      textStyle: TextStyle(fontSize: 12),
    ),
    const BubbleSpecialThree(
      text: 'Hi',
      color: CustomColor.mainPinkColor,
      tail: false,
      textStyle: TextStyle(color: Colors.white, fontSize: 12),
    ),
    const BubbleSpecialThree(
      text: 'Hello',
      color: Color(0xFFE8E8EE),
      tail: false,
      isSender: false,
      textStyle: TextStyle(fontSize: 12),
    ),
  ];
  List<dynamic> messagesList = [];

  @override
  void initState() {
    super.initState();
    messagesList = messagesListDemo.reversed.toList(growable: true);
  }

  TextEditingController chatController = TextEditingController();
  final scrollController = ScrollController();

  void onFieldSubmitted() async {
    setState(() {
      messagesList.insert(
        0,
        BubbleSpecialThree(
          text: chatController.text,
          color: CustomColor.mainColor,
          tail: false,
          textStyle: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    });

    // Move the scroll position to the bottom
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    chatController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Usama",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "medium",
                  fontSize: 17.sp),
            ),
            centerTitle: true,
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Column(children: [
        // const Row(
        //   children: [
        //     Expanded(
        //       child: Divider(
        //         color: Color(0XFFEBEBEB),
        //         thickness: 1,
        //         height: 5,
        //       ),
        //     ),
        //     Text("Today 2:05 PM",
        //         style: TextStyle(
        //             color: Color(0XFF4E9C0B),
        //             fontSize: 10,
        //             fontWeight: FontWeight.w400)),
        //     Expanded(
        //       child: Divider(
        //         color: Color(0XFFEBEBEB),
        //         thickness: 1,
        //       ),
        //     ),
        //   ],
        // ),
        Expanded(
            child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus(); // <-- Hide virtual keyboard
          },
          child: ListView.builder(
            controller: scrollController,
            reverse: true,
            itemCount: messagesList.length,
            itemBuilder: (context, index) {
              return messagesList[index];
            },
          ),
        )),
        Container(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    controller: chatController,
                    cursorColor: CustomColor.mainColor,
                    decoration: InputDecoration(
                      filled: true,
                      isDense: true,
                      fillColor:  Colors.white,
                      hintText: 'Type your message',
                      hintStyle: const TextStyle(
                        color: Color(0xff777777),
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                      contentPadding: EdgeInsets.only(left: 2.h),
                      suffixIcon: Transform.scale(
                        scale: 0.4,
                        child: InkWell(
                          onTap: () {
                            onFieldSubmitted();
                          },
                          child: SvgPicture.asset("assets/svg/commentshare.svg"),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(color: Color(0xffEBEBEB)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(color: Color(0xffEBEBEB)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
