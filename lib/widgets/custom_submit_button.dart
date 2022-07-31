import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

class CButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  const CButton({
    Key? key,
    required this.title,
    this.color = AppColor.primary,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 8.h,
        width: 100.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Mulish",
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 12.sp,
            ),
          ),
        ),
      ),
    );
  }
}
