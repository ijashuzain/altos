import 'package:altos/constants/colors.dart';
import 'package:altos/constants/config.dart';
import 'package:altos/widgets/custom_app_bar.dart';
import 'package:altos/widgets/greeting_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_list_tile.dart';

class ManagerHome extends StatelessWidget {
  const ManagerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Home",
        icon: Icons.home,
      ),
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Padding(
          padding: Config.paddingAll,
          child: Column(
            children: [
              const GreetingBar(),
              SizedBox(height: 4.h),
              CListTile(
                title: "CUSTOMER DATAS",
                leadingIcon: Icons.book,
                onTap: (){},
              ),
              SizedBox(height: 2.h),
              CListTile(
                title: "ALTOS MANAGERS",
                leadingIcon: Icons.work_outlined,
                onTap: (){},
              ),
              SizedBox(height: 2.h),
              CListTile(
                title: "ALTOS TEAM LEADERS",
                leadingIcon: Icons.accessibility_new,
                onTap: (){},
              ),
              SizedBox(height: 2.h),
              CListTile(
                title: "ALTOS TELE CALLERS",
                leadingIcon: Icons.phone,
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

