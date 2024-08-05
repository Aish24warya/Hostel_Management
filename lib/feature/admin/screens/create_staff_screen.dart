import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/app_bar.dart';
import 'package:hostelapp/common/custom_text_field.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/feature/auth/widgets/custom_button.dart';
import 'package:hostelapp/theme/text_theme.dart';

class CreateStaffScreen extends StatefulWidget {
  const CreateStaffScreen({super.key});

  @override
  State<CreateStaffScreen> createState() => _CreateStaffScreenState();
}

class _CreateStaffScreenState extends State<CreateStaffScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController jobRole = TextEditingController();
  @override
  void dispose(){
    username.dispose();
    email.dispose();
    password.dispose();
    firstName.dispose();
    lastName.dispose();
    phoneNumber.dispose();
    jobRole.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Create Staff"),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Username",
                style: AppTextTheme.kLabelStyle),
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
                    Text("First Name",
                style: AppTextTheme.kLabelStyle),
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
                    Text("Last Name",
                style: AppTextTheme.kLabelStyle),
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
                    Text("Phone Number",
                style: AppTextTheme.kLabelStyle),
                CustomTextField(
                    controller: phoneNumber,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your contact detail",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone Number is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                    Text("Job Role",
                style: AppTextTheme.kLabelStyle),
                CustomTextField(
                    controller: jobRole,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xffd1d8ff),
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    inputHint: "Enter your Job role",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Job role is required';
                      }
                      return null;
                    },
                  ),
                  heightSpacer(15),
                    Text("Email Address",
                style: AppTextTheme.kLabelStyle),
                CustomTextField(
                    controller:email,
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
                    Text("Password",
                style: AppTextTheme.kLabelStyle),
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
                  heightSpacer(40),
                  CustomButton(
                    buttonText: "Create",
                     onTap:(){
                      if(_formKey.currentState!.validate()){}

                     })
                
              ],
            )
          ),
        ),
      ),

    );
  }
}