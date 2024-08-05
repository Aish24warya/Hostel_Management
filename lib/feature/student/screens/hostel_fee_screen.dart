
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/constant.dart';
import 'package:hostelapp/common/spacing.dart';

class HostelFeeScreen extends StatelessWidget {
  const HostelFeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,"Hostel Fee"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppConstants.hostel
              ),
              heightSpacer(40),
              Container(
                width: double.maxFinite,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 4,
                      color: Color(0xff2e8857),
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
          
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heightSpacer(20),
                      Text("Hostel detail",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                      heightSpacer(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                          children: [
                              Text("Block Detail :",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          Text(" A",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          ],
                         ),
                         Row(
                         children: [
                          Text("Room Number :",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          Text(" 102",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                         ],
                         ),
                         
                        ],
                      ),
                      heightSpacer(10),
                       Text("Payment detail",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                  heightSpacer(20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("Maintainance Charge :",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              Text("\$1000.0",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                      ],),
                      heightSpacer(15),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("Parking Charge :",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              Text("\$500.0",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                      ],),
                       heightSpacer(15),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("Room Water Charge :",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              Text("\$500.0",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                      ],),
                       heightSpacer(15),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("Room Charge :",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              Text("\$35000.0",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                      ],),
                       heightSpacer(15),
                    ],
                  ),
                  heightSpacer(20),
                  Divider(
                   color: Colors.black,
                  ),
                  heightSpacer(20),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text("Total Charge :",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              Text("\$37000.0",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                      ],),
                      heightSpacer(20),
                    ],
                  ),
                ),
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}