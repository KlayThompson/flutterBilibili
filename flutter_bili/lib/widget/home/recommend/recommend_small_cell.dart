import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
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
            _coverImageContainer(),
            _bottomWidget()
          ],
        ),
      ),
    );
  }

  Widget _coverImageContainer() {
    return Container(
      height: ScreenUtil().setHeight(120),
      child: Stack(
        children: <Widget>[
          Positioned(child: _coverImage(),left: 0,top: 0,bottom: 0,right: 0,),
          Positioned(child: _playInfo(),left: 0,bottom: 0,right: 0,)
        ],
      ),
    );
  }

  //大图
  Widget _coverImage() {
    if (item.cover == null) {
      print(item.title);
    }
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
      child: CachedNetworkImage(
        imageUrl: item.cover ?? 'http://i1.hdslb.com/bfs/archive/480c8fffa395531f9d6ed59fc98a67097c8e6486.jpg',
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
//          width: ScreenUtil().setWidth(345),
          height: ScreenUtil().setHeight(120),
          color: Color(0xffe7e7e7),
          child: Center(
            child: Image.asset('images/image_tv.png',width: 90,),
          ),
        ),
      ),
    );
  }

  //大图下面播放量评论量播放时长
  Widget _playInfo() {
    return Container(
      height: ScreenUtil().setHeight(33),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromRGBO(0, 0, 0, 0.6),Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
              child:Container(
                height: ScreenUtil().setHeight(33),
                padding: EdgeInsets.only(bottom: 5),
//                color: Colors.pink,
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    _singleMenu(IconData(0xe666, fontFamily: "appIconFonts"), item.coverLeftText1 ?? ''),
                    SizedBox(width: 8,),
                    item.coverLeftText2 != null ? _singleMenu(IconData(0xe665, fontFamily: "appIconFonts"), item.coverLeftText2 ?? '') : Container()
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
              child: Container(
//                color: Colors.pink,
                padding: EdgeInsets.only(right: 10,bottom: 5),
                alignment: Alignment.bottomRight,
                child: Text(item.coverRightText ?? '',style: TextStyle(fontSize: 11,color: Colors.white),),
              ),
          )
        ],
      ),
    );
  }

  Widget _singleMenu(IconData icon,String value) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      child: Row(
        children: <Widget>[
          Icon(icon,size: 15,color: Colors.white,),
          SizedBox(width: 5,),
          Text(value,style: TextStyle(fontSize: 11,color: Colors.white),overflow: TextOverflow.ellipsis,maxLines: 1,textAlign: TextAlign.end,),
        ],
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
