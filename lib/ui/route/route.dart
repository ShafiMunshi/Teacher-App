import 'package:get/get_navigation/get_navigation.dart';

import '../auth/login_screen/login_screen.dart';
import '../splash/splash_screen.dart';


const String splash = "/Splash-Screen";

const loginScreen = "/Login-Screen";
const calculatorScreen = "/Calculator-Screen";

List<GetPage> getpages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: loginScreen,
    page: () => LoginScreen(),
    transition: Transition.leftToRight,
  ),

];
