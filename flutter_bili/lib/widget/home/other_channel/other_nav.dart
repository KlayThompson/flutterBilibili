import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_common_channel_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/screenutil.dart';

class OtherChannelNav extends StatelessWidget {
  final List<CommonChannelListViewDataModel> list;
  OtherChannelNav(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(97),
      color: Color(0xfff4f4f4),
      child: this.list.length > 4 ? ListView(
        scrollDirection: Axis.horizontal,
        children: _topItems(context),
      ) : Row(
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

  Widget _singleCell(BuildContext context,CommonChannelListViewDataModel model) {
    return InkWell(
      onTap: () {
        if (model.uri.startsWith('https://')) {
          Routes.navigateTo(context, Routes.webView,
              params: {'title': model.title, 'url': model.uri});
        } else {
          print('need add pages');
        }
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, ScreenUtil().setHeight(13), 10, 0),
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: model.cover,
              width: ScreenUtil().setHeight(33),
              placeholder: (context, url) => Container(
                width: ScreenUtil().setHeight(33),
                height: ScreenUtil().setHeight(33),
                color: Colors.transparent,
              ),
            ),
            SizedBox(height: 11,),
            Text(model.title,style: TextStyle(color: Color(0xff444444),fontSize: ScreenUtil().setSp(13)),),
          ],
        ),
      ),
    );
  }
}
