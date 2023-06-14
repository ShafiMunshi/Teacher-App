import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teacher_management/ui/splash/splash_screen.dart';
import 'package:teacher_management/ui/view/hpme_screen/home_screen.dart';

import 'ui/route/route.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        // navigatorKey: navigatorKey,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(),
          ),
        ),
        home: SplashScreen(),
        // TODO - change this homescreen to splashcreen
        initialRoute: splash,
        getPages: getpages,
      ),
    );
  }
}
