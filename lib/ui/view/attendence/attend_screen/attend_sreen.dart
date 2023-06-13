import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_color.dart';

class AttendScreen extends StatefulWidget {
  String sub;
  String dept;
  String sem;

  AttendScreen({required this.sub, required this.dept, required this.sem});

  @override
  State<AttendScreen> createState() => _AttendScreenState();
}

class _AttendScreenState extends State<AttendScreen> {
  List<bool> a = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> b = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<dynamic> isChecked = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  var roll = [
    '584342',
    '584343',
    '584344',
    '584345',
    '584346',
    '584347',
    '584348',
    '584349',
    '584350',
    '584351',
    '584352',
    '584353',
    '584354',
    '584355',
    '584356',
    '584357',
    '584358',
    '584359',
    '584360',
    '584361',
    '584362',
    '584363',
    '584364',
    '584365',
    '584366',
    '584367',
    '584368',
    '584369',
    '584370',
    '584371',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.purplee,
          title: Text('Take Attendence'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 95.h,
                  decoration: BoxDecoration(
                    color: AppColor.purplee,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.sub,
                        style: TextStyle(
                          letterSpacing: 0.5,
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.dept,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tmpTxt(' Roll'),
                    simTxt('Present'),
                    simTxt('Absent'),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  height: 500.h,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // tmpTxt(sublists[index]),
                          tmpTxt(roll[index]),
                          Row(
                            children: [
                              Checkbox(
                                  value: a[index],
                                  onChanged: (bool? value1) {
                                    setState(() {
                                      a[index] = value1!;
                                    });
                                  }),
                              SizedBox(
                                width: 110.w,
                              ),
                              Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.red,
                                  value: b[index],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      // isChecked[index] = value;
                                      b[index] = value!;
                                    });
                                  }),
                              SizedBox(
                                width: 20.w,
                              )
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
                InkWell(
                  onTap: () {
                    var snackBar =
                        SnackBar(content: Text('Attendence Submitted'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    
                    Timer(Duration(seconds: 3), () {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    height: 45.h,
                    alignment: Alignment.center,
                    width: 140.w,
                    decoration: BoxDecoration(
                      color: AppColor.purplee,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

tmpTxt(txt) {
  return Text(txt,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 18.sp,
        height: 2,
      ));
}

simTxt(txt) {
  return Text(
    txt,
    style: TextStyle(
        fontSize: 18.sp,
        // height: 20,
        decoration: TextDecoration.underline),
  );
}
