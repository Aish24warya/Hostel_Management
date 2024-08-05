import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/constant.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/theme/text_theme.dart';

class RoomChangeScreen extends StatefulWidget {
  const RoomChangeScreen({super.key});

  @override
  State<RoomChangeScreen> createState() => _RoomChangeScreenState();
}

class _RoomChangeScreenState extends State<RoomChangeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,"Room Change Requests"),
        body: ListView.builder(
          itemCount: 2,
          padding: EdgeInsets.all(10),
          itemBuilder:(context,index){
        return RequestCard();
          }
        ),
    );

  }
}

class RequestCard extends StatelessWidget {
  const RequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.maxFinite,
       
        child: SizedBox(
          child: Column(
          children: [
            heightSpacer(20),
            Container(
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors:[
                  Color(0xff2e8b57).withOpacity(0.5)
                  ,Color(0x002e8857)
                ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                     topRight: Radius.circular(30.r),
                  )
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      heightSpacer(20),
                  Image.asset(AppConstants.person,
                  height: 70.h,
                  width: 70.w),
                  heightSpacer(10),
                  Text("Rishi Singh",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700
                  ),),
                ],
              ),
              widthSpacer(20),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpacer(10),
                   Text("Username: Priya",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                  ),
                  heightSpacer(10),
                   Text("Current Room:201",
                  style: TextStyle(
                    fontSize: 12.sp,
                    
                  ),
                  ),
                   heightSpacer(10),
                   Text("Current Block:B",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                  ),
                  heightSpacer(10),
                   Text("Email Id: Priya234@gmail.com",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                  ),heightSpacer(10),
                   Text("Phone Number:9823653473",
                  style: TextStyle(
                    fontSize: 12.sp, 
                  ),
                  ),
                  heightSpacer(10),
                ],
              )
          
                ],
              ),
            ),
            Container(
            width: double.maxFinite,
            height: 250.h,
            padding: EdgeInsetsDirectional.symmetric(vertical:10),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Asked For : ",
                             style:  AppTextTheme.kLabelStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                              ),
                               Text(
                                "Block : ",
                                style: TextStyle(
                                  color: Color(0xffec6977),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                "A",
                                style: TextStyle(
                                  color: Color(0xffec6977),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              widthSpacer(20),
                              Text(
                                "Room number : ",
                                style: TextStyle(
                                  color: Color(0xffec6977),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                "201",
                                style: TextStyle(
                                  color: Color(0xffec6977),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          heightSpacer(8),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Reason: ",
                             style:  AppTextTheme.kLabelStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                              ),
                               Text(
                                "Switches are not working",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          heightSpacer(8),
                         Row(
                          children: [
                             Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,vertical:6
                            ),
                          width:140.w,
                          decoration: BoxDecoration(
                            color: Color(0xffec6977),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Reject",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Colors.white,
                                    ),
                                    ),  
                            ],
                          ),
                          
                        ),
                    ),
                      ],
                    ),
                    widthSpacer(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,vertical:6
                            ),
                          width:140.w,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Approve",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      color: Colors.white,
                                    ),
                                    ),  
                            ],
                          ),
                          
                        ),
                    ),
                      ],
                    ),
                          ],
                         )

                    
   ],
                  
        ),
       ],
                  
  ),
                  
                  ),
                ),
              ],
            ),
            ),
          ],
          ),
        ),

    );
  }
}