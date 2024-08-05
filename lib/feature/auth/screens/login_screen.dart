import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hostelapp/common/Constant.dart';
import 'package:hostelapp/common/custom_text_field.dart';
import 'package:hostelapp/common/spacing.dart';
import 'package:hostelapp/feature/auth/screens/register_screen.dart';
import 'package:hostelapp/feature/auth/widgets/custom_button.dart';
import 'package:hostelapp/feature/home/screen/home_screen.dart';
import 'package:hostelapp/theme/Colors.dart';
import 'package:hostelapp/theme/text_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AppConstants.logo,
                    height: 250.h,
                  ),
                ),
                heightSpacer(30),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login to your account",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0xff522258),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                heightSpacer(25),
                Text(
                  "Email",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                CustomTextField(
                  controller: email,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your Email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(30),
                Text(
                  "Password",
                  style: AppTextTheme.kLabelStyle,
                ),
                heightSpacer(15),
                CustomTextField(
                  controller: password,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffd1d8ff),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  inputHint: "Enter your password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    }
                    return null;
                  },
                ),
                heightSpacer(30),

                CustomButton(
                  size: 16,
                  buttonText: "Login" ,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                     print("validation");
                     }
                    Navigator.push(
                      context, CupertinoPageRoute(
                        builder:(context)=> const HomeScreen(),),
                        );
                         
                  },
                       
                ),
                heightSpacer(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't have an account?",
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Text(
                        "Register",
                        style: AppTextTheme.kLabelStyle.copyWith(
                          fontSize: 10.sp,
                          color: AppColors.kGreenColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}