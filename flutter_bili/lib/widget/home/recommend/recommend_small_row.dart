import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
import 'package:flutter_bili/widget/home/recommend/recommend_small_cell.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendSmallRow extends StatelessWidget {
  final RecommendItem first;
  final RecommendItem last;
  RecommendSmallRow({this.first, this.last});
  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 100,
      width: ScreenUtil().setWidth(375),
      color: Color(0xfff4f4f4),
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RecommendSmallCell(item: first),
            flex: 1,
          ),
          Expanded(
            child: RecommendSmallCell(item: last),
            flex: 1,
          )
        ],
      ),
    );
  }
}
