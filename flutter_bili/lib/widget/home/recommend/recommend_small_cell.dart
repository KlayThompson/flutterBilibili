import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
import 'package:flutter_bili/widget/common/small_cover_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendSmallCell extends StatelessWidget {
  final RecommendItem item;
  RecommendSmallCell({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff4f4f4),
      child: Card(
        child: Column(
          children: <Widget>[
            SmallCoverImageWidget(cover: item.cover,coverLeftText1: item.coverLeftText1,coverLeftText2: item.coverLeftText2,coverRightText: item.coverRightText,),
            _bottomWidget()
          ],
        ),
      ),
    );
  }

  //bottom title and tag three point
  Widget _bottomWidget() {
    return Container(
//      color: Colors.pink,
      height: ScreenUtil().setHeight(77),
      child: Column(
        children: <Widget>[
          Container(// title
            alignment: Alignment.topLeft,
            height: ScreenUtil().setHeight(50),
            padding: EdgeInsets.fromLTRB(5, 3, 5, 0),
            child: Text(item.title,style: TextStyle(fontSize: ScreenUtil().setSp(14),color: Color(0xff444444)),maxLines: 2,overflow: TextOverflow.ellipsis,),
          ),
          _bottomLikeAndThreePoint()
        ],
      ),
    );
  }

  //like author three point
  Widget _bottomLikeAndThreePoint() {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 6,
            child: item.descButton != null ? Container(padding: EdgeInsets.only(left: 5),child: Text(item.descButton.text ?? '',style: TextStyle(fontSize: 12,color: Colors.black38),maxLines: 1,overflow: TextOverflow.ellipsis,),)
                : Container(
              padding: EdgeInsets.all(5),
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xffFFF1ED)
              ),
              child: Text(item.rcmdReason ?? '',style: TextStyle(color: Color(0xffFF6633),fontSize: 12),maxLines: 1,overflow: TextOverflow.ellipsis,),
            ),
          ),
          Expanded(child: Icon(IconData(0xe61b, fontFamily: "appIconFonts"),size: 16,),flex: 1,)
        ],
      ),
    );
  }
}
