import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/custom_text_field.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/feature/auth/widgets/custom_button.dart';
import 'package:hostelapp/theme/text_theme.dart';

class StudentCreateIssue extends StatefulWidget {
  const StudentCreateIssue({super.key});

  @override
  State<StudentCreateIssue> createState() => _StudentCreateIssueState();
}

class _StudentCreateIssueState extends State<StudentCreateIssue> {
  TextEditingController studentComment=TextEditingController();
  String ?selectedIssue;
  List<String> issues=[
    "Bedroom",
    "Bathroom",
    "Furniture",
    "Water",
    "Kitchen",
    "Electricity"
  ];
  @override
  void dispose() {
   studentComment.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context,"Create Issue"),
      body:SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightSpacer(15),
                Text(
                  "Room Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Container(
                    width: double.maxFinite,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1,color: Color(0xff2e8b57)),
                      borderRadius: BorderRadiusDirectional.circular(14),
                    ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("101",
                      style: TextStyle(fontSize: 17.sp),
                      ), 
                    ),
                    
                  ),
                  
                ),
                heightSpacer(15),
                Text(
                  "Block Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Container(
                    width: double.maxFinite,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1,color: Color(0xff2e8b57)),
                      borderRadius: BorderRadiusDirectional.circular(14),
                    ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("A",
                      style: TextStyle(fontSize: 17.sp),
                      ), 
                    ),
                    
                  ),
                  
                ),
                heightSpacer(15),
                Text(
                  "Your Email Id",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Container(
                    width: double.maxFinite,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1,color: Color(0xff2e8b57)),
                      borderRadius: BorderRadiusDirectional.circular(14),
                    ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("rish2314@gmail.com",
                      style: TextStyle(fontSize: 17.sp),
                      ), 
                    ),
                    
                  ),
                  
                ),
                heightSpacer(15),
                Text(
                  "Phone Number",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Container(
                    width: double.maxFinite,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1,color: Color(0xff2e8b57)),
                      borderRadius: BorderRadiusDirectional.circular(14),
                    ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text("8623456710",
                      style: TextStyle(fontSize: 17.sp),
                      ), 
                    ),
                    
                  ),
                  
                ),
                heightSpacer(15),
                Text(
                "Issue You Are Facing",
                style: AppTextTheme.kLabelStyle,
              ),
              heightSpacer(15),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                  width: double.maxFinite,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1,color: Color(0xff2e8b57)),
                    borderRadius: BorderRadiusDirectional.circular(14),
                  ),
                  ),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    isExpanded: true,
                    value: selectedIssue,
                     onChanged: (String?newValue){
                      setState(() {
                        selectedIssue = newValue;
                      });
                     },
                     items:issues.map((String issues){
                         return DropdownMenuItem(
                          value:issues ,
                          child: Text(issues));
                     },).toList()
                     ),
                  
                ),
                
              ),
                heightSpacer(15),
                Text(
                  "Comments",
                  style: AppTextTheme.kLabelStyle,
                ),
                 heightSpacer(15),
                 CustomTextField(
                  controller: studentComment,
                  validator: (value){
                      if(value!.isEmpty){
                        return "Comment is required";
                      }
                      return null;
                  },
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff)
                    )
                  ),
                  ),
                  heightSpacer(40),
                  CustomButton(buttonText: "Submit", onTap:(){}),
                  heightSpacer(10),
              ],
                      ), 
                    ),
                    
                  ),
                  
                ),
  
              
            );
  }
}