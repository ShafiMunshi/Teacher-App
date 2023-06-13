import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_color.dart';

class MarkScreen extends StatefulWidget {
  String sub;
  String dept;
  String sem;

  MarkScreen({required this.sub, required this.dept, required this.sem});

  @override
  State<MarkScreen> createState() => _MarkScreenState();
}

class _MarkScreenState extends State<MarkScreen> {
  TextEditingController _mark = TextEditingController();

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

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('Mark Assignment'),
        centerTitle: true,
      ),

      //TODO: assignment check and give result
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 15.w, right: 3.w, top: 15.h, bottom: 15.h),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 50.h,
                width: 140.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.purplee,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  roll[i].toString(),
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        i++;
                        _mark.clear();
                      });
                    },
                    icon: (Icon(Icons.cancel_outlined)),
                    color: Colors.red,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 50.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.purplee,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextField(
                        controller: _mark,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        i++;
                        _mark.clear();
                      });
                    },
                    icon: (Icon(Icons.done_outline_rounded)),
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              imageBox('assets/images/assign1.png',
                  context), // firebase images should updated here
              //, TODO: images form firebase storage'
              SizedBox(
                height: 8.h,
              ),
              imageBox('assets/images/assign1.png', context),
              SizedBox(
                height: 8.h,
              ),
              imageBox('assets/images/assign1.png', context),
              SizedBox(
                height: 8.h,
              ),
              imageBox('assets/images/assign1.png', context),
            ],
          ),
        ),
      ),
    ));
  }
}

imageBox(img, _) {
  return InkWell(
    onTap: () {
      showImageViewer(_, Image.asset(img).image, swipeDismissible: false);
    },
    child: Container(
      height: 220.h,
      width: 220.w,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    ),
  );
}
