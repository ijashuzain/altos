import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

PreferredSizeWidget customAppBar({required BuildContext context, required String title, required IconData icon, bool isBackButton = false}){
  return AppBar(
    leadingWidth: 20.w,
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    leading: SizedBox(
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: GestureDetector(
          onTap: (){
            if(isBackButton){
              Navigator.pop(context);
            }
          },
          child: Container(
            decoration: const BoxDecoration(
              color: AppColor.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 14.sp,
            ),
          ),
        ),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        fontFamily: "Mulish",
        color: AppColor.black,
      ),
    ),
  );
}