import 'dart:developer';

import 'package:altos/constants/colors.dart';
import 'package:altos/constants/config.dart';
import 'package:altos/models/customer_model.dart';
import 'package:altos/providers/customer_provider.dart';
import 'package:altos/views/customer/customer_details.dart';
import 'package:altos/widgets/custom_app_bar.dart';
import 'package:altos/widgets/custom_tab_bar.dart';
import 'package:altos/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import '../../widgets/greeting_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  _init(BuildContext context) {
    log("_init -> called");
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<CustomerProvider>().fetchAllCustomers();
    });
  }

  @override
  Widget build(BuildContext context) {
    _init(context);
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
                onButtonTap: () {
                  context.read<CustomerProvider>().selectCustomer(null);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCustomer(isAddData: true,),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 5.h,
              ),
              CTabBar(onSelected: (val) {}),
              Consumer<CustomerProvider>(
                builder: (context, provider, child) {
                  return Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: provider.customers.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(bottom: 0.5.h),
                        child: GestureDetector(
                          onTap: () {
                            provider.selectCustomer(provider.customers[index]);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddCustomer(),
                              ),
                            );
                          },
                          child: UserCard(
                            name: provider.customers[index].name,
                            phone: provider.customers[index].phone,
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
