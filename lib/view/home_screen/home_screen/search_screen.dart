import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../utils/color/custom_color.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {
  List<String>data=[
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
          Row(
          children: [SizedBox(height: 20.h,),
          GestureDetector(onTap: () {
            Get.back();
          },
              child: const Icon(Icons.arrow_back_ios_new)),
          SizedBox(width: 2.w,),
          Expanded(child: Container(
            height: 45,
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
              prefixIcon: Transform.scale(scale: 0.6,
                  child: SvgPicture.asset("assets/svg/search.svg",color: Colors.red,)),
              hintText: "Search", hintStyle: TextStyle(fontSize: 12.px,fontFamily: "regular"),
              isDense: true,
              contentPadding: EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red),),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),),
          )),

            ],
          ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent",style: TextStyle(fontFamily: "bold",fontSize: 12.px,color: CustomColor.mainCustomBlackColor),),
                  Text("Clear All",style: TextStyle(fontFamily: "bold",fontSize: 10.px,color: CustomColor.mainPinkColor)),
                ],
              ),
              // Expanded(
              //   child: ListView.builder(
              //     shrinkWrap: true,
              //       itemBuilder: (context,index){
              //     return ListTile(
              //       title: Text("Zeeshan"),
              //       trailing: Icon(Icons.cancel),
              //     );
              //   }),
              // )
          ],
        ),
      ),
    ));
  }
}
