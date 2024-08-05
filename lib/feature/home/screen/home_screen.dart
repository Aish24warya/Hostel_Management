import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/constant.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/feature/admin/screens/create_staff_screen.dart';
import 'package:hostelapp/feature/admin/screens/issue_screen.dart';
import 'package:hostelapp/feature/admin/screens/room_change_screen.dart';
import 'package:hostelapp/feature/admin/screens/staff_display_screen.dart';
import 'package:hostelapp/feature/home/widgets/Category_card.dart';
import 'package:hostelapp/feature/student/hostel_fee_screen.dart';
import 'package:hostelapp/feature/student/screens/create_issue_screen.dart';
import 'package:hostelapp/feature/student/screens/room_availability_screen.dart';
import 'package:hostelapp/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dashboard",
          style: AppTextTheme.kLabelStyle.copyWith(fontSize: 22.sp)
          ),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15.w),
            child: InkWell(
            onTap: () {},
            child: SvgPicture.asset(AppConstants.profile)),
          )
          ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              heightSpacer(20),
              Container(
                height: 230.h,
                width: double.maxFinite,
                decoration:  ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,color: Color(0xff007b3b)
                    ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(2)
                      )
                  ),
                  shadows: [BoxShadow(
                    color: Color(0x332e88b57),
                    blurRadius: 8,
                    offset: Offset(2, 4),
                    spreadRadius: 0
                  ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Rishi Singh",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff333333),
                            fontSize: 18.sp
                          ),),
                          heightSpacer(10),
                          Text("Room No. : 101",
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 8.sp
                          ),),
                          Text("Block No. : A",
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 8.sp
                          ),),
                        ],   
                      ),
                      widthSpacer(15),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, 
                              CupertinoPageRoute(builder:(context)=>StudentCreateIssue()));
                            },
                          child: SvgPicture.asset(AppConstants.createIssue)),
                          Text("Create Issue",
                          style: TextStyle(
                            fontSize: 15.sp,fontWeight: FontWeight.w700
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              heightSpacer(30),
              Container(
                width: double.maxFinite,
                color: const Color(0xff262e8b57),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightSpacer(10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Categories",
                      style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700
                            ),),
                    ),
                    heightSpacer(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryCard(category: 'Room\nAvailability', 
                        onTap:(){
                          Navigator.push(
                            context, 
                              CupertinoPageRoute(
                                builder:(context)=>const RoomAvailabilityScreen(),
                                ),
                                );
                        },
                         image:AppConstants.roomAvailability),
                          CategoryCard(category: 'All\nIssues', 
                        onTap:(){
                          Navigator.push(
                            context, 
                              CupertinoPageRoute(
                                builder:(context)=>const IssueScreen(),
                                ),
                                );
                        },
                         image:AppConstants.allIssues),
                          CategoryCard(category: 'Staff\nMembers', 
                        onTap:(){
                          Navigator.push(
                            context, 
                              CupertinoPageRoute(
                                builder:(context)=>const StaffDisplayScreen(),
                                ),
                                );
                        },
                         image:AppConstants.staffMember), 
                      ],
                    ),
                    heightSpacer(10),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CategoryCard(category: 'Create\nStaff', 
                        onTap:(){
                          Navigator.push(
                            context, 
                              CupertinoPageRoute(
                                builder:(context)=>const CreateStaffScreen(),
                                ),
                                );
                        },
                         image:AppConstants.createStaff),
                          CategoryCard(category: 'Hostel\nFee', 
                        onTap:(){
                          Navigator.push(
                            context, 
                              CupertinoPageRoute(
                                builder:(context)=>const HostelFeeScreen(),
                                ),
                                );
                        },
                         image:AppConstants.hostelFee),
                          CategoryCard(category: 'Change\nRequest', 
                        onTap:(){
                          Navigator.push(
                            context, 
                              CupertinoPageRoute(
                                builder:(context)=>const RoomChangeScreen(),
                                ),
                                );
                        },
                         image:AppConstants.roomChange),
                      ],
                    ),
                    heightSpacer(20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}