import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/colors.dart';

class GreetingBar extends StatelessWidget {
  final bool isButtonEnabled;
  final VoidCallback? onButtonTap;
  final String buttonTitle;
  const GreetingBar({
    Key? key,
    this.onButtonTap,
    this.buttonTitle = "Add Data",
    this.isButtonEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Ijas Huzain",
                style: TextStyle(
                  fontFamily: "Mulish",
                  fontSize: 14.sp,
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Lets get started",
                style: TextStyle(
                  fontFamily: "Mulish",
                  fontSize: 10.sp,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          AddButton(
            title: buttonTitle,
            isEnabled: isButtonEnabled,
            onTap: onButtonTap,
          )
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback? onTap;
  final String title;
  const AddButton({
    Key? key,
    this.onTap,
    this.title = "Add Data",
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isEnabled) {
          onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
          child: Text(
            "+ $title",
            style: TextStyle(
              fontFamily: "Mulish",
              fontSize: 10.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}