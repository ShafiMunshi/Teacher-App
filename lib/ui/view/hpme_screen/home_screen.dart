import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:teacher_management/ui/view/assignment/assignement.dart';
import 'package:teacher_management/ui/view/attendence/attendence.dart';
import 'package:teacher_management/ui/view/daily_test/daily_test.dart';
import 'package:teacher_management/ui/view/demo/demo_screen.dart';
import 'package:teacher_management/ui/view/demo/ex.dart';
import 'package:teacher_management/ui/view/notice/notice.dart';
import 'package:teacher_management/ui/view/time_table/time_table.dart';

import '../../../const/app_color.dart';
import '../../../const/app_string.dart';
import '../../widgets/widgets.dart';

int hei = 30;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isPresent = false;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
              child: Column(
                // mainAxisAlignment: isPresent,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 125.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.purplee,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 90.h,
                                width: 75.w,
                                child: Image.asset(
                                  'assets/images/khaled.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Text(
                                    AppString.position,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  Text(
                                    AppString.dept,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // Text('jelasj'),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 42.h,
                  ),

                  // Text('asa'),
                  //function
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homeBtn('Attendence', 'assets/icons/attend.png', () {
                        Get.to(Attendece());
                      }),
                      homeBtn('Assignment', 'assets/icons/as2.png', () {
                        Get.to(Assignment());
                      }),
                      homeBtn('Notices', 'assets/icons/notice.png', () {
                        Get.to(NoticeScreen());
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 36.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homeBtn('Daily Test', 'assets/icons/test.png', () {
                        Get.to(DailyTest());
                      }),
                      homeBtn('Messages', 'assets/icons/msg2.png', () {
                        // Get.to();
                      }),
                      homeBtn('Marks', 'assets/icons/time.png', () {
                        Get.to(TimeTable());
                      }),
                    ],
                  ),
                  SizedBox(
                    height: 36.h,
                  ),

                  // Text('asdfa'),
                  eleBTxt('Running Class'),
                  SizedBox(
                    height: 8.h,
                  ),
                  tileCard(
                      'Operating System -01',
                      'Department: Computer\n5th/1st     Time: 9.45',
                      'assets/icons/time.png'),
                  SizedBox(
                    height: 8.h,
                  ),
                  eleBTxt('Next Class'),
                  SizedBox(
                    height: 8.h,
                  ),
                  tileCard(
                      'Java Programming -01',
                      'Department: Computer\n5th/1st     Time: 9.45',
                      'assets/icons/time.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

homeBtn(txt, icon, ontap) {
  return InkWell(
    onTap: ontap,
    child: Card(
      elevation: 5,
      child: Container(
        height: 90.h,
        width: 90.h,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 55.h,
              width: 55.h,
              child: Image.asset(
                icon,
                fit: BoxFit.cover,
                // height: 10,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(txt),
          ],
        ),
      ),
    ),
  );
}
