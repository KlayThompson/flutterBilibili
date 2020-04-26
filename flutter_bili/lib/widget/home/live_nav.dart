import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_live_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveNavWidget extends StatelessWidget {
  final List<AreaEntranceV2List> list;
  LiveNavWidget({this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(158),
//      color: Colors.pink,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        children: list.map((val) {
          return _singleItem(context,val);
        }).toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context,AreaEntranceV2List item) {
    return InkWell(
      onTap: () {
//        Routes.navigateTo(context, Routes.webView,params: {'title': item.title,'url': item.link});
      },
      child: Container(
//      color: Colors.pink,
        height: ScreenUtil().setHeight(100),
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: item.pic,
              width: ScreenUtil().setWidth(45),
              placeholder: (context, url) => Container(
                width: ScreenUtil().setWidth(45),
                height: ScreenUtil().setWidth(45),
                color: Colors.transparent,
              ),
            ),
            Text(
              item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14,color: Color(0xff444444)),
            ),
          ],
        ),
      ),
    );
  }
}
