import 'package:altos/constants/colors.dart';
import 'package:altos/constants/config.dart';
import 'package:altos/widgets/custom_app_bar.dart';
import 'package:altos/widgets/custom_submit_button.dart';
import 'package:altos/widgets/custom_text_box.dart';
import 'package:altos/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/option_selector.dart';

class CustomerFeedback extends StatelessWidget {
  CustomerFeedback({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Feedback",
        icon: Icons.arrow_back_ios,
        isBackButton: true,
      ),
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: Config.paddingAll,
            child: Column(
              children: [
                SizedBox(height: 5.h),
                CTextField(controller: _nameController, hint: "Name"),
                SizedBox(height: 10.h),
                OptionSelector(onSelected: (val) {}),
                CTextField(controller: _nameController, hint: "Follow up date"),
                SizedBox(height: 2.h),
                CTextBox(controller: _feedbackController, hint: "Feedback"),
                SizedBox(height: 2.h),
                CButton(title: "Submit", onTap: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
