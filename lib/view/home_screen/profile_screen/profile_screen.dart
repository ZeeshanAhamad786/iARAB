import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/home_screen/follower_following_screen/follower_following_screen.dart';
import 'package:iarab/view/home_screen/profile_screen/edit_profile_screen.dart';
import 'package:iarab/view/home_screen/profile_screen/like_post_screen.dart';
import 'package:iarab/view/home_screen/profile_screen/saved_post_screen.dart';
import 'package:iarab/view/home_screen/setting_screen/setting_screen.dart';
import 'package:iarab/view/home_screen/wallet_screen/wallet_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/utils/color/custom_color.dart';

import 'all_post_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/png/backgroundImage.png",),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: MediaQuery.of(context).padding.top), // Ensure top padding for status bar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container()
                          ),
                          Expanded(
                            flex: 8,
                            child: Center(
                              child: Text(
                                "Mohsin",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                  fontFamily: "medium",
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: PopupMenuButton<String>(
                              color: Colors.white,
                              onSelected: (String value) {
                                // Handle menu item selection here
                              },
                              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                PopupMenuItem<String>(
                                  value: 'item1',
                                  child: GestureDetector(onTap: (){
                                    try{Get.to(()=>SettingScreen());}catch (e){
                                      print('Error navigating to SettingScreen: $e');
                                    }
                                  },
                                    child: Row(
                                      children: [
                                        SvgPicture.asset("assets/svg/setting.svg"),
                                        SizedBox(width: 2.w),
                                        Text(
                                          'Setting',
                                          style: TextStyle(
                                            fontFamily: "medium",
                                            fontSize: 10.px,
                                            color: CustomColor.mainCustomSettingColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem<String>(
                                  value: 'item2',
                                  child: GestureDetector(onTap: (){
                                    try{Get.to(()=>WalletScreen());}catch (e){
                                      print('Error navigating to SettingScreen: $e');
                                    }
                                  },
                                    child: Row(
                                      children: [
                                        SvgPicture.asset("assets/svg/wallet.svg"),
                                        SizedBox(width: 2.w),
                                        Text(
                                          'My wallet',
                                          style: TextStyle(
                                            fontFamily: "medium",
                                            fontSize: 10.5.px,
                                            color: CustomColor.mainCustomSettingColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Add more PopupMenuItems as needed
                              ],
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/png/molviprofile.png",
                      ),
                      radius: 45,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            "@Mohsin5050",
            style: TextStyle(
                fontSize: 14.px,
                fontFamily: "medium",
                color: CustomColor.mainCustomSettingColor),
          ),
          Text(
            "Business man, Tourist",
            style: TextStyle(
                fontSize: 12.px,
                fontFamily: "regular",
                color: CustomColor.mainCustomSetting1Color),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '32',
                    style: TextStyle(
                        fontSize: 14.px,
                        fontFamily: "bold",
                        color: CustomColor.mainCustomBlackColor),
                  ),
SizedBox(width: 21.w,),
                  GestureDetector(onTap:() {
                    Get.to(()=>FollowerFollowingScreen());
                  },
                    child: Text(
                      '1.1M',
                      style: TextStyle(
                          fontSize: 14.px,
                          fontFamily: "bold",
                          color: CustomColor.mainCustomBlackColor),
                    ),
                  ),
                  SizedBox(width: 21.w,),
                  GestureDetector(onTap: () {
                    Get.to(()=>FollowerFollowingScreen());
                  },
                    child: Text(
                      '200',
                      style: TextStyle(
                          fontSize: 14.px,
                          fontFamily: "bold",
                          color: CustomColor.mainCustomBlackColor),
                    ),
                  ),
                  SizedBox(width: 4.w,),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Posts',
                    style: TextStyle(
                        fontSize: 12.px,
                        fontFamily: "regular",
                        color: CustomColor.mainCustomSetting1Color),
                  ),
                  GestureDetector(onTap: () {
                    Get.to(()=>FollowerFollowingScreen());
                  },
                    child: Text(
                      'Followers',
                      style: TextStyle(
                          fontSize: 12.px,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomSetting1Color),
                    ),
                  ),
                  GestureDetector(onTap: () {
                    Get.to(()=>FollowerFollowingScreen());
                  },
                    child: Text(
                      'Following',
                      style: TextStyle(
                          fontSize: 12.px,
                          fontFamily: "regular",
                          color: CustomColor.mainCustomSetting1Color),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 1.1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(120, 26),
                      backgroundColor: CustomColor.mainCustomBlueColor),
                  onPressed: () {
                    Get.to(()=>EditProfileScreen());
                  },
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "medium",
                        fontSize: 12.px),
                  )),
              SizedBox(
                width: 5.w,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(16.h, 3.1.h),
                      backgroundColor: CustomColor.mainPinkColor),
                  onPressed: () {},
                  child: Text(
                    "Share",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          TabBar(
            controller: _tabController,
            labelColor: CustomColor.mainPinkColor,
            labelStyle: TextStyle(fontSize: 12.px, fontFamily: "regular"),
            indicatorColor: CustomColor.mainPinkColor,
            indicatorWeight: 1.5,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(text: 'All Posts'), // First tab
              Tab(text: 'Saved'), // Second tab
              Tab(text: 'Liked'), // Second tab
            ],
          ),
          Flexible(
            child: TabBarView(
              controller: _tabController,
              children: [
                AllPostScreen(), // Content for Tab 1
                SavedPostScreen(), // Content for Tab 2
                LikedPostScreen(), // Content for Tab 3
              ],
            ),
          ),
        ],
      ),
    );
  }
}
