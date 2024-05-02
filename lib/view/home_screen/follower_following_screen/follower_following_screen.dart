import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iarab/view/home_screen/follower_following_screen/follower_screen.dart';
import 'package:iarab/view/home_screen/follower_following_screen/following_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/utils/color/custom_color.dart';


class FollowerFollowingScreen extends StatefulWidget {
  const FollowerFollowingScreen({Key? key}) : super(key: key);

  @override
  State<FollowerFollowingScreen> createState() =>
      _FollowerFollowingScreenState();
}

class _FollowerFollowingScreenState extends State<FollowerFollowingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              leading: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined,size: 20.sp,)),
              automaticallyImplyLeading: false,
              title: Text(
                "Mohsin",
                style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "medium",
                  fontSize: 17.sp,
                ),
              ),
              centerTitle: true,
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 14),
              indicatorColor: Color(0xffAC83F6),
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: 'Follower'), // First tab
                Tab(text: 'Following'), // Second tab
              ],
            ),
          ],
        ),
      ),
      body:
      TabBarView(
        controller: _tabController,
        children: [
          FollowerScreen(), // Content for Tab 1
          FollowingScreen(), // Content for Tab 2
        ],
      ),
    );
  }
}
