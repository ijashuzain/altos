import 'package:altos/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String phone;
  final VoidCallback onTap;

  const UserCard({
    Key? key,
    required this.name,
    required this.phone,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.skyBlue,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 3.w, right: 3.w),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: "Mulish",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkBlue,
                  ),
                ),
                Text(
                  phone,
                  style: TextStyle(
                    fontFamily: "Mulish",
                    fontSize: 9.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.grey,
                  ),
                )
              ],
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColor.grey,
              size: 12.sp,
            )
          ],
        ),
      ),
    );
  }
}
