import 'package:altos/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CTabBar extends StatefulWidget {

  final Function(int) onSelected;
  const CTabBar({Key? key, required this.onSelected}) : super(key: key);

  @override
  State<CTabBar> createState() => _CTabBarState();
}

class _CTabBarState extends State<CTabBar> {
  int selection = 0;

  @override
  void initState() {
    widget.onSelected(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selection = 0;
                  });
                  widget.onSelected(0);
                },
                child: SizedBox(
                  width: 20.w,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: selection == 0 ? FontWeight.w600 : FontWeight.w500,
                      color: selection == 0 ? AppColor.black : AppColor.grey,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selection = 1;
                  });
                  widget.onSelected(1);
                },
                child: SizedBox(
                  width: 23.w,
                  child: Text(
                    "Yesterday",
                    style: TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: selection == 1 ? FontWeight.w600 : FontWeight.w500,
                      color: selection == 1 ? AppColor.black : AppColor.grey,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selection = 2;
                  });
                  widget.onSelected(2);
                },
                child: SizedBox(
                  width: 20.w,
                  child: Text(
                    "Week",
                    style: TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: selection == 2 ? FontWeight.w600 : FontWeight.w500,
                      color: selection == 2 ? AppColor.black : AppColor.grey,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(
                height: 1.h,
                child: const Divider(),
              ),
              SizedBox(
                height: 1.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 10.w,
                      height: 0.3.h,
                      color: selection == 0 ? AppColor.primary : Colors.transparent,
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      width: 16.w,
                      height: 0.3.h,
                      color: selection == 1 ? AppColor.primary : Colors.transparent,
                    ),
                    SizedBox(width: 7.w,),
                    Container(
                      width: 10.w,
                      height: 0.3.h,
                      color: selection == 2 ? AppColor.primary : Colors.transparent,
                    ),
                    SizedBox(width: 7.w,),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
