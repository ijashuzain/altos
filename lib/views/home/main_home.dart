import 'package:altos/constants/colors.dart';
import 'package:altos/constants/config.dart';
import 'package:altos/widgets/custom_app_bar.dart';
import 'package:altos/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/greeting_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: "Home", icon: Icons.home),
      body: SizedBox(
        width: 100.w,
        child: Padding(
          padding: Config.paddingAll,
          child: Column(
            children: [
              GreetingBar(
                buttonTitle: "Add Data",
                isButtonEnabled: true,
                onButtonTap: () {},
              ),
              SizedBox(
                height: 5.h,
              ),
              CTabBar(onSelected: (val) {}),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 13,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 0.5.h),
                    child: Container(
                      height: 9.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColor.skyBlue),
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.w, right: 3.w),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ijas Huzain M",
                                  style: TextStyle(
                                    fontFamily: "Mulish",
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Ijas Huzain M",
                                  style: TextStyle(
                                    fontFamily: "Mulish",
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
