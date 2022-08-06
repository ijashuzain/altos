import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CListTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final VoidCallback onTap;

  const CListTile({
    Key? key,
    required this.title,
    required this.leadingIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 70,
        width: 100.w,
        decoration: BoxDecoration(
          color: AppColor.skyBlue,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.grey),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 6.w,
                child: Center(
                  child: Icon(
                    leadingIcon,
                    size: 6.w,
                    color: AppColor.darkBlue,
                  ),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                title,
                style: TextStyle(
                  color: AppColor.darkBlue,
                  fontFamily: "Mulish",
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColor.grey,
                size: 10.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
