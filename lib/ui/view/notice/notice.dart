import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_color.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.purplee,
        title: Text('Notice'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              noitceCard('Today\'s Meeting 10.45'),
              noitceCard('Today\'s Meeting 11.00'),
              noitceCard('Today\'s Meeting 12.45'),
              noitceCard('Today\'s Meeting 01.45'),
              noitceCard('Today\'s Meeting 03.45'),
            ],
          ),
        ),
      ),
    ));
  }
}

noitceCard(txt) {
  return Card(
    elevation: 2,
    child: ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      title: Text(
        txt,
        style: TextStyle(fontSize: 18.sp),
        textAlign: TextAlign.left,
      ),
      subtitle: Text(
        '10.10 AM',
        textAlign: TextAlign.right,
      ),
    ),
  );
}
