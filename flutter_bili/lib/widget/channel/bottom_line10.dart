import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomLine10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: ScreenUtil().setWidth(375),
      color: Color(0xfff4f4f4),
    );
  }
}
