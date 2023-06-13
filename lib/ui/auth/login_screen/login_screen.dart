import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../const/app_color.dart';
import '../../widgets/widgets.dart';
import '../auth_helper/auth_helper.dart';


TextEditingController _email = TextEditingController();
TextEditingController _pass = TextEditingController();

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.purplee,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(35.w),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                bigTitle("Welcome Back"),
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: bigTitle("Login"),
                ),
                SizedBox(
                  height: 50.h,
                ),
                textformsection(
                    "Enter Your Roll..", Icons.email, false, _email),
                SizedBox(
                  height: 50.h,
                ),
                textformsection("Enter Your Password", Icons.lock, true, _pass),
                SizedBox(
                  height: 50.h,
                ),
                largeButton(
                  'Login',
                  () {
                    final userEmail = _email.text;
                    final userPass = _pass.text;
                    var obj = AuthHelper();
                    obj.signIN(userEmail, userPass, context);
                    
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

textformsection(txt, icos, obs, cntr) {
  return Container(
      height: 57.h,
      child: TextFormField(
        obscureText: obs,
        controller: cntr,
        decoration: InputDecoration(
          hintText: txt,
          hintStyle: TextStyle(color: Colors.white54),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          prefixIcon: Icon(
            icos,
            color: Colors.white,
          ),
          // suffixIcon: Icon(
          //   Icons.visibility,
          //   color: Colors.grey,
          // )),
        ),
      ));
}

largeButton(txt, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 65.h,
      // color: Colors.white,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
      alignment: Alignment.center,
      child: Text(
        txt,
        style: TextStyle(
          color: AppColor.purplee,
          fontSize: 15.sp,
        ),
      ),
    ),
  );
}
