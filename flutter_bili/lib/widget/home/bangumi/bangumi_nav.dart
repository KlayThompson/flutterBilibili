import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BangumiNav extends StatelessWidget {
  List<BangumiModuleItem> list;
  BangumiNav(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(97),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5,color: Colors.black12)
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _topItems(context),
      ),
    );
  }

  List<Widget> _topItems(BuildContext context) {
    List<Widget> lists = [];
    this.list.forEach((val) {
      lists.add(_singleCell(context,val));
    });
    return lists;
  }

  Widget _singleCell(BuildContext context,BangumiModuleItem item) {
    return InkWell(
      onTap: () {
        if (item.link.startsWith('https://')) {
          Routes.navigateTo(context, Routes.webView,
              params: {'title': item.title, 'url': item.link});
        } else {
          print('need add pages');
        }
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, ScreenUtil().setHeight(13), 10, 0),
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: item.cover,
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
    );
  }
}
