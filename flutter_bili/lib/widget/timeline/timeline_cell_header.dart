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
    bool noPendant = dataModel.desc.userProfile.pendant.image == '' || dataModel.desc.userProfile.pendant.image == null;
    double iconWidth = 40;
    return Container(
      width: ScreenUtil().setWidth(60),
      alignment: Alignment.centerLeft,
      child: Stack(
        children: <Widget>[
          Align(
            child: Container(
              child: ClipRRect(
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
              ),
            ),
          ),
          noPendant ? Container() :
              Positioned(
                child: Container(
                  child: Image.network(dataModel.desc.userProfile.pendant.image),
                ),
              ),
        ],
      ),
    );
  }

  Widget _titleAndTimeLabel() {
    Color unameColor = dataModel.desc.userProfile.vip.vipType == 2 ? Colors.pink[300] : Color(0xff444444);
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            dataModel.desc.userProfile.info.uname,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(16), fontWeight: FontWeight.bold, color: unameColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            _getTimeStr(dataModel.desc.timestamp),
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
        height: ScreenUtil().setHeight(22),
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

  String _getTimeStr(int pTime) {
    String currentTimeStr = DateTime.now().millisecondsSinceEpoch.toString();
    int currentTime = int.parse(currentTimeStr.substring(0, currentTimeStr.length - 3));
    int seconds = currentTime - pTime;
    if (dataModel.desc.userProfile.info.uname == '明日方舟') {
      print('www:' + pTime.toString());
    }
    if (seconds < 60) {
      return '刚刚';
    }
    int minute = seconds~/60;
    if (minute < 60) {
      return minute.toString() + '分钟前';
    }
    int hour = seconds~/3600;
    if (hour < 24) {
      return hour.toString() + '小时前';
    } else if (hour < 48) {
      return '昨天';
    }
    var time = DateTime.fromMillisecondsSinceEpoch(pTime*1000);
    String month = time.month.toString();
    if (month.length == 1) {
      month = '0' + month;
    }
    return month + '-' + time.day.toString();
  }
}
