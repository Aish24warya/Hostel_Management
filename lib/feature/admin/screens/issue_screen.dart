
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/Constant.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/theme/text_theme.dart';

class IssueScreen extends StatefulWidget {
  const IssueScreen({super.key});

  @override
  State<IssueScreen> createState() => _IssueScreenState();
}

class _IssueScreenState extends State<IssueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: buildAppBar(context,"Student Issues"),
        body: ListView.builder(
          itemCount: 2,
          padding: EdgeInsets.all(10),
          itemBuilder:(context,index){
        return IssueCard();
      }
      ),

    );
  }
}

class IssueCard extends StatelessWidget {
  const IssueCard({super.key});

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
                    fontSize: 14.sp,
                  ),
                  ),
                  heightSpacer(10),
                   Text("Room No.:204",
                  style: TextStyle(
                    fontSize: 14.sp,
                    
                  ),
                  ),
                  heightSpacer(10),
                   Text("Email Id: Priya234@gmail.com",
                  style: TextStyle(
                    fontSize: 14.sp,
                    
                  ),
                  ),heightSpacer(10),
                   Text("Phone Number:9823653473",
                  style: TextStyle(
                    fontSize: 14.sp, 
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
                                "Issue: ",
                             style:  AppTextTheme.kLabelStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                              ),
                               Text(
                                "'Electricity'",
                                style: TextStyle(
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
                                "Student Comment: ",
                             style:  AppTextTheme.kLabelStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                              ),
                               Text(
                                "Fan is not working properly",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          heightSpacer(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,vertical:6
                            ),
                          width:140.w,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Resolve",
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