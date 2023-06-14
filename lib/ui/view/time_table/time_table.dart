import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:teacher_management/ui/view/attendence/attend_screen/attend_sreen.dart';
import 'package:teacher_management/ui/view/time_table/mark_screen/mark_screend.dart';

import '../../../const/app_color.dart';

class TimeTable extends StatelessWidget {
  TimeTable({super.key});

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
          title: Text('All Assignment'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  tmpTxt(
                      'Submission Date: 15-05-2023'), //TODO: update the submision date value

                  SizedBox(
                    height: 25.h,
                  ),

                  Container(
                    height: 500.h,
                    padding: EdgeInsets.all(12.r),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sublists.length,
                      itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          Get.to(MarkScreen(
                              sub: sublists[index],
                              dept: 'Department: Computer\n${subsem[index]}',
                              sem: subsem[index]));
                        },
                        child: Card(
                          elevation: 5,
                          child: ListTile(
                            leading: SizedBox(
                              child: Image.asset('assets/icons/mark1.png'), //
                            ),
                            title: Text(sublists[index]),
                            subtitle:
                                Text('Department: Computer\n${subsem[index]}'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  tmpTxt(
                      'Submission Date: 14-05-2023'), //TODO: update the submision date value

                  SizedBox(
                    height: 10.h,
                  ),

                  Container(
                    height: 500.h,
                    padding: EdgeInsets.all(12.r),
                    child: ListView.builder(
                      itemCount: sublists.length,
                      itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          Get.to(MarkScreen(
                              sub: sublists[index],
                              dept: 'Department: Computer\n${subsem[index]}',
                              sem: subsem[index]));
                        },
                        child: Card(
                          elevation: 5,
                          child: ListTile(
                            leading: SizedBox(
                              child: Image.asset('assets/icons/mark1.png'), //
                            ),
                            title: Text(sublists[index]),
                            subtitle:
                                Text('Department: Computer\n${subsem[index]}'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
