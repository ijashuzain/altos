import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

class RoundedButton extends StatelessWidget {

  final String title;
  final VoidCallback onTap;

  const RoundedButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        height: 40,
        width: 30.w,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "Mulish",
            ),
          ),
        ),
      ),
    );
  }
}
