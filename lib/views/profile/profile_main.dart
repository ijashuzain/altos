import 'package:altos/constants/config.dart';
import 'package:altos/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../widgets/custom_submit_button.dart';
import '../../widgets/custom_text_field.dart';

class ProfileMain extends StatelessWidget {
  ProfileMain({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _placeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Profile",
        icon: Icons.person,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.h,
        child: Padding(
          padding: Config.paddingAll,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 14.w,
                    backgroundColor: AppColor.grey,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 14.w,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ijas Huzain M",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                          color: AppColor.black,
                          fontSize: 14.sp,
                        ),
                      ),
                      Text(
                        "Data Collector",
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                          color: AppColor.grey,
                          fontSize: 10.sp,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 3.h),
              CTextField(
                controller: _nameController,
                hint: "Name",
              ),
              CTextField(
                controller: _phoneController,
                hint: "Phone",
              ),
              CTextField(
                controller: _emailController,
                hint: "Email",
              ),
              CTextField(
                controller: _placeController,
                hint: "Place",
              ),
              const Spacer(),
              CButton(
                title: "Update Profile",
                onTap: () {},
              ),
              SizedBox(height: 1.h),
              CButton(
                title: "Sign Out",
                color: Colors.redAccent,
                onTap: () {},
              ),
              SizedBox(height: 5.h)
            ],
          ),
        ),
      ),
    );
  }
}
