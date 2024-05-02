import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iarab/view/home_screen/wallet_screen/recharge_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/utils/color/custom_color.dart';
class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

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
              "My Wallet",
              style: TextStyle(
                  color: CustomColor.mainCustomBlackBoldColor,
                  fontFamily: "medium",
                  fontSize: 17.sp),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(height: 4.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.h),
            child: Text(
              "User Name",
              style: TextStyle(
                  fontSize: 20.px,
                  fontFamily: "bold",
                  color: CustomColor.mainCustomBlackColor),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.h),
            child: Text(
              "balance",
              style: TextStyle(
                  fontSize: 20.px,
                  fontFamily: "bold",
                  color: CustomColor.mainCustomBlackColor),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: CustomColor.mainPinkColor,
            ),
             child:
                 Column(
                   children: [
                     GestureDetector(onTap: () {
                       Get.to(()=>RechargeScreen());
                     },
                       child: Row(
                         children: [
                           Column(
                             children: [
                             Text(
                               "Coin Balance",
                                           style: TextStyle(
                                               fontFamily: "bold",
                                               fontSize: 12.px,
                                               color: Colors.white
                                           ),
                                         ),
                             Row(
                               children: [
                               SvgPicture.asset("assets/svg/coin.svg"),
                                               SizedBox(width: 1.w,),
                                               Text(
                                                 "1200",
                                                 style: TextStyle(
                                                     fontFamily: "bold",
                                                     fontSize: 24.px,
                                                     color: Colors.white
                                                 ),
                                               ),
                             ],),
                           ],),
                           Spacer(),
                             Row(
                            children: [
                              Text(
                                "Get coin",
                                style: TextStyle(
                                    fontFamily: "medium",
                                    fontSize: 12.px,
                                    color: Colors.white
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 18.px,)
                            ],
                          )
                         ],
                       ),
                     ),
                     Divider(color: Colors.white,),
                     Row(
                       children: [
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               "Live Gift rewards",
                               style: TextStyle(
                                   fontFamily: "bold",
                                   fontSize: 12.px,
                                   color: Colors.white
                               ),
                             ),
                             Row(
                               children: [
                                 SvgPicture.asset("assets/svg/giftReward.svg"),
                                 SizedBox(width: 1.w,),
                                 Text(
                                   "80",
                                   style: TextStyle(
                                       fontFamily: "bold",
                                       fontSize: 24.px,
                                       color: Colors.white
                                   ),
                                 ),
                               ],),
                           ],
                         ),
                         Spacer(),
                         Row(
                           children: [
                             Text(
                               "Withdraw ",
                               style: TextStyle(
                                   fontFamily: "medium",
                                   fontSize: 12.px,
                                   color: Colors.white
                               ),
                             ),
                             Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 18.px,)
                           ],
                         )
                       ],
                     ),



                   ],
                 ),

          ),


        ],
      ),
    );
  }
}
