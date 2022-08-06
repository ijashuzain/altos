import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CTextBox extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const CTextBox({
    Key? key,
    required this.controller,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 100.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.grey)),
      child: Padding(
        padding: EdgeInsets.all(3.w),
        child: TextField(
          controller: controller,
          maxLines: 50,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 10.sp,
              fontFamily: "Mulish",
              color: AppColor.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 10.sp,
              fontFamily: "Mulish",
              color: AppColor.grey,
            ),
          ),
        ),
      ),
    );
  }
}