import 'package:flutter/material.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_bili/widget/common/expend_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeLineCellTextWidget extends StatelessWidget {
  final TimeLineDetailItem item;
  TimeLineCellTextWidget(this.item);
  @override
  Widget build(BuildContext context) {
//    _text();
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: ExpandableText(text: item.description, maxLines: 3, style: TextStyle(color: Color(0xff444444), fontSize: ScreenUtil().setSp(14)),),
    );
  }

  _text() {
    String temp = item.description;
//    if (item.description.contains('#')) {
//      int pos = temp.indexOf('#');
//      temp = temp.replaceFirst('#', '');
//      print('now:' + temp);
//      int end = temp.indexOf('#');
//      print('start:' + pos.toString());
//      print('end:' + end.toString());
//      print('ass:' + item.description.substring(pos, end + 2));
//    }
    bool isBegin = true;
    List<String> topics = [];
    int start = 0;
    int end = 0;
    for (int index = 0; index < item.description.length; index++) {
      if (index + 1 < item.description.length) {
        var str = item.description.substring(index, index+1);
        if (str == '#' && isBegin) {
          start = index;
          isBegin = false;
        } else if (str == '#' && !isBegin) {
          end = index;
          isBegin = true;
          //截取字符串
          topics.add(item.description.substring(start, end + 1));
        }
      }
    }
    print('arr:' + topics.toString());
  }
}
