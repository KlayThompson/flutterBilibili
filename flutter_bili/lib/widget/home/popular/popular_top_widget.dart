import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_popular_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularTopWidget extends StatelessWidget {
  final List<PopularTopItem> topItems;
  PopularTopWidget(this.topItems);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(90),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _topItems(),
      ),
    );
  }

  List<Widget> _topItems() {
    List<Widget> lists = [];
    this.topItems.forEach((val) {
      if (val.moduleId != 'hot-channel') {
        lists.add(_singleCell(val));
      }
    });
    print(lists.length);
    return lists;
  }

  Widget _singleCell(PopularTopItem item) {
    return Stack(
      children: <Widget>[
        Container(
//          color: Colors.pink,
          padding: EdgeInsets.fromLTRB(10, ScreenUtil().setHeight(13), 10, 0),
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: item.icon,
                width: ScreenUtil().setHeight(40),
                placeholder: (context, url) => Container(
                  width: ScreenUtil().setHeight(40),
                  height: ScreenUtil().setHeight(40),
                  color: Colors.transparent,
                ),
              ),
              SizedBox(height: 11,),
              Text(item.title,style: TextStyle(color: Color(0xff444444),fontSize: ScreenUtil().setSp(14)),),
            ],
          ),
        ),
        Positioned(
          top: ScreenUtil().setHeight(6),
          right: 0,
          child: item.bubble == null ? Container() : Container(
            height: 20,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
                color: Color(0xffF9749A),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1,color: Colors.white)
            ),
            child: Text(item.bubble.bubbleContent,style: TextStyle(fontSize: 11,color: Colors.white),textAlign: TextAlign.center,),
          ),
        )
      ],
    );
  }
}
