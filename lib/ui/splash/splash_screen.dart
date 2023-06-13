import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../const/app_color.dart';
import '../auth/login_screen/login_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF6350FF),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 275,
                  child: Lottie.asset(
                    "assets/lotties/newScene.json",
                    repeat: false,
                    reverse: false,
                    // animate: false,
                  )),
              SizedBox(
                height: 60.h,
                width: 200.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: AppColor.purplee,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
