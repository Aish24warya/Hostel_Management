import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/spacing.dart';

class CategoryCard extends StatelessWidget {
  String category;
  String image;
  VoidCallback onTap;
   CategoryCard({
    Key?key,
    required this.category,
    required this.onTap,
    required this.image,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
            ),
            shadows:[
              BoxShadow(
                color: Color(0x7f2e8b57),
                blurRadius:4,
                offset: Offset(1,4),
                spreadRadius: 0 ),
                ]
        
          ),
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
                width: 70.w,
                child: Image.asset(image),
              ),
              heightSpacer(10),
              Text(
                category,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 10.sp,
                ),
              ),
              heightSpacer(10),
            ],
          ),
        ),
      ),
    );
  }
}