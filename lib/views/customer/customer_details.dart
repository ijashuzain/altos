import 'package:altos/constants/colors.dart';
import 'package:altos/constants/config.dart';
import 'package:altos/models/customer_model.dart';
import 'package:altos/providers/customer_provider.dart';
import 'package:altos/views/customer/customer_feedback.dart';
import 'package:altos/widgets/custom_app_bar.dart';
import 'package:altos/widgets/custom_submit_button.dart';
import 'package:altos/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_text_box.dart';

class AddCustomer extends StatelessWidget {
  final bool isAddData;

  AddCustomer({Key? key, this.isAddData = false}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _placeController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: "Customer",
        icon: Icons.arrow_back_ios,
        isBackButton: true,
      ),
      body: Selector<CustomerProvider, Customer?>(
        builder: (context, customer, child) {
          if (customer != null) {
            _nameController.text = customer.name;
            _phoneController.text = customer.phone;
            _emailController.text = customer.email!;
            _placeController.text = customer.place!;
            _descriptionController.text = customer.description!;
          }

          return SizedBox(
            height: 100.h,
            width: 100.w,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: Config.paddingAll,
                child: Column(
                  children: [
                    CTextField(controller: _nameController, hint: "Name"),
                    CTextField(controller: _phoneController, hint: "Phone"),
                    CTextField(controller: _emailController, hint: "Email"),
                    CTextField(controller: _placeController, hint: "Place"),
                    SizedBox(height: 5.h),
                    CTextBox(
                      controller: _descriptionController,
                      hint: "Description",
                    ),
                    SizedBox(height: 3.h),
                    isAddData
                        ? CButton(
                            title: "Submit",
                            onTap: () {},
                          )
                        : FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CustomerFeedback(),
                                ),
                              );
                            },
                            backgroundColor: AppColor.primary,
                            child: const Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          )
                  ],
                ),
              ),
            ),
          );
        },
        selector: (ctx, provider) => provider.selectedCustomer,
      ),
    );
  }
}
