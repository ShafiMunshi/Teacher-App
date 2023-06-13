import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:teacher_management/ui/view/attendence/attend_screen/attend_sreen.dart';
import 'package:teacher_management/ui/widgets/widgets.dart';

import '../../../const/app_color.dart';

class Attendece extends StatelessWidget {
  Attendece({super.key});
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
          title: Text('Attendence'),
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
                  'Today\'s Attendence',
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
                      Get.to(AttendScreen(
                          sub: sublists[index],
                          dept: 'Department: Computer\n${subsem[index]}',
                          sem: subsem[index]));
                    },
                    child: Card(
                      elevation: 5,
                      child: ListTile(
                        // TODO ontap passing parametre
                        // style: ListTileStyle(),
                        leading: SizedBox(
                          // width: 90.w,
                          // height: 75.h,
                          child: Image.asset('assets/icons/a.png'), //
                        ),
                        title: Text(sublists[index]),
                        subtitle:
                            Text('Department: Computer\n${subsem[index]}'),
                        // trailing: Icon(Icons.keyboard_arrow_right_sharp),
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

lrgTxt(txt) {
  return Container(
    height: 45.h,
    alignment: Alignment.center,
    width: 170.w,
    decoration: BoxDecoration(
      color: AppColor.purplee,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Text(
      'Reset',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}




            //   tileCard(
            //       sublists[index],
            //       'Department: Computer\n${subsem[index]}',
            //       'assets/icons/time.png'),
            // ),