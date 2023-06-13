import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teacher_management/ui/view/attendence/attend_screen/attend_sreen.dart';

import '../../../const/app_color.dart';


eleBTxt(txt) {
  return Container(
    height: 45.h,
    alignment: Alignment.center,
    width: 170.w,
    decoration: BoxDecoration(
      color: AppColor.purplee,
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Text(
      txt,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.sp,
        // fontWeight: FontWeight.bold,
      ),
    ),
  );
}


bigTitle(txt) {
  return Text(
    txt,
    style: TextStyle(
        color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.w600),
  );
}


tileCard(txt, subtxt, [img]) {
  return Card(
    
    elevation: 5,
    child: ListTile(
      // onTap: ontap,// TODO ontap passing parametre
      // style: ListTileStyle(),
      leading: SizedBox(
        // width: 90.w,
        // height: 75.h,
        child: Image.asset(img), //
      ),
      title: Text(txt),
      subtitle: Text(subtxt),
      // trailing: Icon(Icons.keyboard_arrow_right_sharp),
    ),
  );
}

menuBtn(txt, img, ontap) {
  return Container(
    height: 150.h,
    width: 150.w,
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        IconButton(
          onPressed: ontap,
          iconSize: 100.h,
          icon: ImageIcon(
            color: AppColor.purplee,
            AssetImage(
              img,
            ),
          ),
        ),
        Text(txt),
      ],
    ),
  );
}

tileCard2(txt, subtxt, [img]) {
  return Card(
    elevation: 5,
    child: ListTile(
      leading: SizedBox(
        // width: 90.w,
        // height: 75.h,
        child: Image.asset(img), //
      ),
      title: Text(txt),
      subtitle: Text(subtxt),
      trailing: Icon(Icons.keyboard_arrow_right_sharp),
    ),
  );
}
