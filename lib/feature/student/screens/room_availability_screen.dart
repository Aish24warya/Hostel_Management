
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/Constant.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/spacing.dart';


class RoomAvailabilityScreen extends StatefulWidget {
  const RoomAvailabilityScreen({super.key});

  @override
  State<RoomAvailabilityScreen> createState() => _RoomAvailabilityScreenState();
}

class _RoomAvailabilityScreenState extends State<RoomAvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Room Availability"),
      body: SingleChildScrollView(
        child: Column(
          children: [
           ListView.builder(
            padding: EdgeInsets.all(10.h),
            itemCount:2,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: RoomCard(),
              );
          
          }),
          ],
        ),
      ),
    );
  }
}
class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
          bottomLeft: Radius.circular(30.r)
        ),
        border: Border.all(
          color: Color(0xff007b3b),
          width: 2
        ),
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Image.asset(AppConstants.bed,
                height: 70.h,
                width: 70.w
                ),
                Text("Room No.101",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
            ],
          ),
          widthSpacer(15),
          Column(
            children: [
              Text("Block",
              style: TextStyle(fontSize: 12.sp)
              ),
              heightSpacer(5),
              Text("Capacity",
              style: TextStyle(fontSize: 12.sp)
              ),
               heightSpacer(5),
              Text("Current Capacity",
              style: TextStyle(fontSize: 12.sp)
              ),
               heightSpacer(5),
               Text("Room Type",
              style: TextStyle(fontSize: 12.sp)
              ),
              heightSpacer(5),
                Row(
                  children: [
                    heightSpacer(3),
                    Text("Status",
                    style: TextStyle(fontSize: 12.sp),),
                    widthSpacer(10),
                    Container(
                      height: 60.h,
                      padding: EdgeInsets.only(left: 5,right: 5,bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.lightGreen,
                      ),
                      child: Text("Available",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white
                      ),),
                    )
                  ],
                )


            ],
          )
        ],
      ),
    );
  }
}