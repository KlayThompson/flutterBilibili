import 'package:flutter/material.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeLineCellPicturesWidget extends StatelessWidget {
  final TimeLineDetailItem item;
  TimeLineCellPicturesWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: _pictureWidget(),
    );
  }

  Widget _pictureWidget() {
    if (item.picturesCount == 1) {
      TimeLinePicture picture = item.pictures.first;
      print('height:${picture.imgHeight}');
      print('width:${picture.imgWidth}');
      double ratio = picture.imgWidth / picture.imgHeight;
      print(picture.imgSrc);
      return Container(
        child: AspectRatio(
            aspectRatio: ratio,
          child: Image.network(picture.imgSrc),
        ),
      );
    }
    return Container();
  }
}
