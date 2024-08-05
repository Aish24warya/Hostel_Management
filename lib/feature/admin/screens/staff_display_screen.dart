import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/constant.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/theme/text_theme.dart';

class StaffDisplayScreen extends StatefulWidget {
  const StaffDisplayScreen({super.key});

  @override
  State<StaffDisplayScreen> createState() => _StaffDisplayScreenState();
}

class _StaffDisplayScreenState extends State<StaffDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "All Staffs"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 1,
        childAspectRatio: 2/1.2,
        crossAxisSpacing: 16.0,mainAxisSpacing: 16,
        ), 
        itemCount: 1,
        itemBuilder:(context,index){
          return Container(
            padding: EdgeInsets.all(16),
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xff007b38),
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              )
            ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                     Column(
                      children: [
                         Image.asset(AppConstants.person,
                              width: 100.w,
                              height: 100.h
                              ),
                      heightSpacer(20),
                       Text(
                                "Hostel Warden",
                                style: AppTextTheme.kLabelStyle,
                                
                                
                              ),
                      ],
                     ),
                     widthSpacer(10),
                     Expanded(
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heightSpacer(10),
                          Text("Name: Vadanshu Mishra",
                           style: TextStyle(fontSize: 14.sp),),
                          heightSpacer(8),
                          Text("Email: vadansh12@gmail.com",
                           style: TextStyle(fontSize: 14.sp),),
                          heightSpacer(8),
                          Text("Contact detail:7865342601",
                           style: TextStyle(fontSize: 14.sp),),
                          heightSpacer(8),
                        ],
                       ),
                     ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,vertical: 8
                      ),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xffec6977),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Delete",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                              ),  
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        
        },),
      ),
    );
  }
}