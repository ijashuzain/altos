import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

PreferredSizeWidget customAppBar({required BuildContext context, required String title, required IconData icon, bool isBackButton = false}){
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ),
    leadingWidth: 20.w,
    backgroundColor: isBackButton ? AppColor.skyBlue : Colors.white,
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
            child: Padding(
              padding: EdgeInsets.only(left: isBackButton ? 5.sp : 0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 14.sp,
              ),
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
        color: AppColor.darkBlue,
      ),
    ),
  );
}