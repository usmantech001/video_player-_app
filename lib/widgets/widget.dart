import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget bigText({
  required String text,
  double fontsize = 25.0,
  Color color = Colors.black,
}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontsize.sp, color: color),
  );
}

Widget reuseableText({
  required String text,
  Color color = Colors.white,
  double fontSize = 16.0
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize.sp,
    ),
  );
}
