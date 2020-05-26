import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeLineCellHeader extends StatelessWidget {
  final TimeLineDataModel dataModel;
  TimeLineCellHeader(this.dataModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(60),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         Expanded(child:  Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[_avatarWidget(), Expanded(child: _titleAndTimeLabel(),)],
         )),
          _rightButton()
        ],
      ),
    );
  }

  Widget _avatarWidget() {
    double iconWidth = 40;
    return Container(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
      alignment: Alignment.centerLeft,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(iconWidth / 2)),
            child: CachedNetworkImage(
              imageUrl:
              dataModel.desc.userProfile.info.face,
              fit: BoxFit.cover,
              width: iconWidth,
              height: iconWidth,
              placeholder: (context, url) => Container(
                  width: iconWidth,
                  height: iconWidth,
                  color: Color(0xfff4f4f4),
                  child: Center(
                    child: Image.asset(
                      'images/image_tv.png',
                      width: 20,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _titleAndTimeLabel() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            dataModel.desc.userProfile.info.uname,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(16), fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '8小时前',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(13), color: Color(0xff888888)),
          ),
        ],
      ),
    );
  }

  Widget _rightButton() {
    return Container(
      padding: EdgeInsets.only(right: ScreenUtil().setWidth(10)),
      alignment: Alignment.centerRight,
      child: Container(
        width: ScreenUtil().setWidth(55),
        height: ScreenUtil().setHeight(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.pink[300], width: 1)),
        child: Center(
          child: Text(
            '+ 关注',
            style: TextStyle(
                fontSize: ScreenUtil().setSp(14), color: Colors.pink[300]),
          ),
        ),
      ),
    );
  }
}
