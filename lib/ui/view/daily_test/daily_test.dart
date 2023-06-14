import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:teacher_management/ui/view/assignment/assign_screen/assign_screen.dart';

import '../../../const/app_color.dart';
import 'test_submit/test_submit.dart';

class DailyTest extends StatelessWidget {
  DailyTest({super.key});

  DateTime datetime = DateTime.now();

  String _curDate = DateFormat.MMMMEEEEd().format(DateTime.now());

  var sublists = [
    'Operating Sytem(66641)',
    'Object Oriented (66541)',
    'Java Script (66745)',
    'Analog Electronis (66641)',
    'Operating System (66641)',
    'History'
  ];
  var subdept = [
    'Math',
    'Physics',
    'Biology',
    'Geography',
    'Chemistry',
    'History'
  ];
  var subsem = [
    '5th/1st',
    '3rd/1st',
    '1st/1st',
    '2nd/1st',
    '5th/2nd',
    '3rd/2nd'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.purplee,
          title: Text('Task'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Text('asdfas'),
              Container(
                height: 45.h,
                alignment: Alignment.center,
                width: 220.w,
                decoration: BoxDecoration(
                  color: AppColor.purplee,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'Today\'s Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                _curDate,
                style: TextStyle(
                  fontSize: 20.sp,
                ),
              ),
              Container(
                height: 500.h,
                padding: EdgeInsets.all(12.r),
                child: ListView.builder(
                  itemCount: sublists.length,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      Get.to(TestScreen(sub: sublists[index], dept: 'Department: Computer\n${subsem[index]}', sem: subsem[index])); 
                    },
                    child: Card(
                      elevation: 5,
                      child: ListTile(

                        leading: SizedBox(

                          child: Image.asset('assets/icons/daily.png'), //
                        ),
                        title: Text(sublists[index]),
                        subtitle:
                            Text('Department: Computer\n${subsem[index]}'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
