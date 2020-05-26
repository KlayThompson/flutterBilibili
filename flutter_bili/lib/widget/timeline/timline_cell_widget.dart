import 'package:flutter/material.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_bili/widget/timeline/timeline_cell_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeLineCellWidget extends StatelessWidget {
  final TimeLineDataModel model;
  TimeLineCellWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: ScreenUtil().setWidth(375),
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TimeLineCellHeader(model)
        ],
      ),
    );
  }
}
