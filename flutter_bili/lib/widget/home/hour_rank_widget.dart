import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_live_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HourRankWidget extends StatelessWidget {
  final HourRank hourRank;
  HourRankWidget(this.hourRank);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Column(
        children: <Widget>[_titleText(), _rankUserInfoCell()],
      ),
    );
  }

  //头部标题 和 查看更多
  Widget _titleText() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      hourRank.moduleInfo.title,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      hourRank.extraInfo.subTitle,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.black54),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
//                color: Colors.deepPurple,
                padding: EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '查看更多',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          color: Colors.black54),
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.black54,
                      size: 20,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget _rankUserInfoCell() {
    List<Widget> cellList = [];
    cellList.add(Expanded(
      child: _singleCell(hourRank.list[1]),
      flex: 1,
    ));
    cellList.add(Expanded(
      child: _singleCell(hourRank.list[0]),
      flex: 1,
    ));
    cellList.add(Expanded(
      child: _singleCell(hourRank.list[2]),
      flex: 1,
    ));
    return Container(
      child: Row(
        children: cellList,
      ),
    );
  }

  Widget _singleCell(HourRankList item) {
    bool isCenter = item.rank == 1;
    return Container(
      height: ScreenUtil().setHeight(180),
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 0.5,
            height: ScreenUtil().setHeight(40),
            color: isCenter ? Colors.black12 : Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _avatar(item),
              SizedBox(
                height: 5,
              ),
              Text(
                item.uname,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: ScreenUtil().setSp(16)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                item.areaV2Name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(13), color: Colors.black54),
              ),
            ],
          ),
          Container(
            width: 0.5,
            height: ScreenUtil().setHeight(40),
            color: isCenter ? Colors.black12 : Colors.white,
          ),
        ],
      ),
    );
  }

  //头像
  Widget _avatar(HourRankList item) {
    bool isCenter = item.rank == 1;
    bool isLive = item.liveStatus == 1;
    Color borderColor = Colors.white;
    if (item.rank == 1) {
      borderColor = Color(0xffFBC562);
    } else if (item.rank == 2) {
      borderColor = Color(0xffA2BAD3);
    } else {
      borderColor = Color(0xffDEB99F);
    }
    double imageWidth = isCenter ? 95 : 80;
    return Container(
//      color: Colors.deepPurple,
      width: imageWidth + 20,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              height: imageWidth,
              width: imageWidth,
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: borderColor),
                  borderRadius: BorderRadius.circular(imageWidth / 2)),
              child: ClipOval(
                child: Image.network(
                  item.face,
                  width: imageWidth,
                  height: imageWidth,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: isLive ? 18 : 0,
              width:  isLive ? 45 : 0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(width: 0.5,color: Colors.pink[300]),
                color: Colors.white
              ),
              child: Text('直播中',textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.pink[300]),),
            ),
          )
        ],
      ),
    );
  }
}
