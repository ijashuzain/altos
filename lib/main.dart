import 'package:altos/constants/colors.dart';
import 'package:altos/utils/providers.dart';
import 'package:altos/views/authentication/login.dart';
import 'package:altos/views/navigation/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: Sizer(
        builder: (ctx, orientation, device) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: AppColor.primary,
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white
          ),
          home: Login(),
        ),
      ),
    );
  }
}
