import 'package:altos/constants/colors.dart';
import 'package:altos/constants/config.dart';
import 'package:altos/views/home/main_home.dart';
import 'package:altos/views/navigation/bottom_nav_bar.dart';
import 'package:altos/widgets/custom_text_field.dart';
import 'package:altos/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                height: 30.h,
                color: AppColor.skyBlue,
                child: Padding(
                  padding: Config.paddingAll,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login to Altos",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontSize: 26.sp,
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lets begin",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontSize: 14.sp,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: Config.paddingAll,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CTextField(
                      controller: _usernameController,
                      hint: "Username",
                    ),
                    CTextField(
                      controller: _passwordController,
                      hint: "Password",
                    ),
                    SizedBox(height: 10.h),
                    // const Text(
                    //   "Forgot Password ?",
                    //   style: TextStyle(fontWeight: FontWeight.w400),
                    // ),
                    RoundedButton(
                      title: "Login",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavBar(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "Forgot password ?",
                      style: TextStyle(
                        fontFamily: "Mulish",
                        fontSize: 9.sp,
                        color: AppColor.grey,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
