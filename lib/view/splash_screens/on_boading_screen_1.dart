import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iarab/view/authentication/get_started_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controller/utils/color/custom_color.dart';
import '../../controller/utils/constant/constant.dart';
import '../../widget/custom_main_button.dart';

class OnBoadingScreen1 extends StatefulWidget {

  const OnBoadingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoadingScreen1> createState() => _OnBoadingScreen1State();
}

class _OnBoadingScreen1State extends State<OnBoadingScreen1> {
  int pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                pageIndex = page;
              });
            },
            children: [
              OnboardingPage(
                image: "assets/png/onBording1.png",
                title: 'In-App',
                hello: " Messaging",
                subtitle:
                "Connect with broadcasters and viewers instantly through messaging, sharing your thoughts, reactions, and feedback in real-time.",
                buttonText: 'Next',
                textColor: CustomColor.mainBlackColor,
                textColor1: CustomColor.mainPinkColor,
                controller: _controller,
              ),
              OnboardingPage(
                image: "assets/png/onBording2.png",
                title: 'Live',
                hello: " Streaming",
                subtitle:
                "Broadcast live to your audience anytime, anywhere and share your moments in real-time with friends and followers.",
                buttonText: 'Next',
                textColor: CustomColor.mainPinkColor,
                textColor1: CustomColor.mainBlackColor,
                controller: _controller,
              ),
              // Add more pages as needed
            ],
          ),
          if (pageIndex == 0)
            Positioned(
              top: 9.1.h,
              right: 3.h,
              child: GestureDetector(
                onTap: () {
                  Get.to(()=>GetStartedScreen());
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.px,
                    fontFamily: MyConstant.boldFontFamily,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String hello;
  final String subtitle;
  final String buttonText;
  final Color textColor;
  final Color textColor1;
  final PageController controller;

  const OnboardingPage({
    required this.image,
    required this.title,
    required this.hello,
    required this.subtitle,
    required this.buttonText,
    required this.textColor,
    required this.controller,
    required this.textColor1,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(image),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 2,
                        effect: CustomizableEffect(
                          activeDotDecoration: DotDecoration(
                            height: 0.8.h,
                            width: 2.2.h,
                            color: CustomColor.mainColor,
                            borderRadius: BorderRadius.circular(32.px),
                          ),
                          dotDecoration: DotDecoration(
                              height: 0.8.h,
                              width: 2.2.h,
                              color: CustomColor.mainLightGreyColor,
                              borderRadius: BorderRadius.circular(32.px)),
                          spacing: 1.2.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    RichText(
                      text: TextSpan(
                        text: title,
                        style: TextStyle(
                          fontSize: 20.px,
                          color: textColor1,
                          fontFamily: "bold"
                          // fontFamily: MyConstant.boldFontFamily,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: hello,
                            style: TextStyle(
                              fontSize: 20.px,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                              fontFamily: "bold",
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12.px,
                        color: CustomColor.mainGreyColor,
                        fontFamily: "regular"
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomMainButton(
                        buttonText: buttonText,
                        buttonColor: CustomColor.mainColor,
                        onPressed: () {
                          if(controller.page==1){
                            Get.to(() => GetStartedScreen());
                          }else
                          controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 1.h,width: 1.h,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
