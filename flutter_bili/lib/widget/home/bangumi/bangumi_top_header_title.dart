import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BangumiTopHeaderTitleWidget extends StatelessWidget {
  final String title;
  final bool hideRight;
  BangumiTopHeaderTitleWidget({this.title,this.hideRight=true});

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.pink,
      padding: EdgeInsets.only(top: 11,bottom: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  this.title,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w500),
                ),
              )),
          Expanded(
              flex: 1,
              child: hideRight ? Container() :
              Container(
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
                      color: Colors.black26,
                      size: 20,
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
