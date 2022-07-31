import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

class CTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  const CTextField({
    Key? key,
    required this.controller,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 2.h),
      child: SizedBox(
        width: 100.w,
        height: 5.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 5.h,
              width: 1.w,
              color: AppColor.skyBlue,
            ),
            SizedBox(width: 3.w),
            Expanded(
              child: TextField(
                controller: controller,
                style: TextStyle(
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                  fontSize: 12.sp,
                ),
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyle(
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                    color: AppColor.grey,
                    fontSize: 12.sp,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
