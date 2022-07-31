import 'package:altos/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Altos",
              style: TextStyle(
                color: AppColor.primary,
                fontFamily: "Mulish",
                fontWeight: FontWeight.bold,
                fontSize: 34.sp
              ),
            ),
            const Spacer(),
            const CupertinoActivityIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
