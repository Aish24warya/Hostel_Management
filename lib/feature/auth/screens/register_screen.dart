import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/constant.dart';
import 'package:hostelapp/common/custom_text_field.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/feature/auth/widgets/custom_button.dart';
import 'package:hostelapp/theme/Colors.dart';
import 'package:hostelapp/theme/text_theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  String? selectedBlock;
  String? selectedRoom;
  List<String> blockOption = ['A', 'B'];
  List<String> roomOptionA = ['101', '102', '103', '104'];
  List<String> roomOptionB = ['201', '202', '203', '204'];

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpacer(40),
                  Center(
                    child: Image.asset(
                      AppConstants.logo,
                      height: 150.h,
                      width: 150.w,
                    ),
                  ),
                  heightSpacer(30),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Register your account here",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Color(0xff522258),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  heightSpacer(25),
                  Text(
                    "UserName",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: username,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Username",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Username is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                  Text(
                    "First Name",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: firstName,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your First name",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'First name is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                  Text(
                    "Last Name",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: lastName,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Last name",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Last name is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                  Text(
                    "Contact Number",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: phoneNumber,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your contact number",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Contact number is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                  Text(
                    "Email Address",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: email,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Email address",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email address is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                  Text(
                    "Password",
                    style: AppTextTheme.kLabelStyle,
                  ),
                  CustomTextField(
                    controller: password,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Password",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                  Row(
                    children: [
                      Container(
                        height: 50.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xff2e8b57)),
                              borderRadius: BorderRadius.circular(14.r)),
                        ),
                        child: Row(
                          children: [
                            widthSpacer(20),
                            Text("Block No."),
                            widthSpacer(10),
                            DropdownButton(
                              value: selectedBlock,
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    selectedBlock = newValue;
                                    selectedRoom = null;
                                  },
                                );
                              },
                              items: blockOption.map((String block) {
                                return DropdownMenuItem(
                                    value: block, child: Text(block));
                              }).toList(),
                            ),
                            widthSpacer(20),
                          ],
                        ),
                      ),
                      widthSpacer(20),
                      Container(
                        height: 50.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xff2e8b57)),
                              borderRadius: BorderRadius.circular(14.r)),
                        ),
                        child: Row(
                          children: [
                            widthSpacer(20),
                            Text("Room No."),
                            widthSpacer(10),
                            DropdownButton<String>(
                              value: selectedRoom,
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    selectedBlock = newValue;
                                    selectedRoom = null;
                                  },
                                );
                              },
                              items: (selectedBlock == "A"
                                      ? roomOptionA
                                      : roomOptionB)
                                  .map(
                                (String room) {
                                  return DropdownMenuItem<String>(
                                      value: room, child: Text(room));
                                },
                              ).toList(),
                            ),
                            widthSpacer(20),
                          ],
                        ),
                      )
                    ],
                  ),
                  heightSpacer(25),
                  CustomButton(
                    buttonText: "Register",
                    onTap: () {
                      print(selectedBlock);
                      print(selectedRoom);
                      if (_formKey.currentState!.validate()) {}
                    },  
                  ),
                  heightSpacer(10),
                ],
              )),
        ),
      ),
    );
  }
}
