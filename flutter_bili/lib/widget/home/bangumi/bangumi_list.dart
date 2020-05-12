import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'bangumi_top_header_title.dart';

class BangumiList extends StatelessWidget {
  BangumiModules modules;
  BangumiList(this.modules);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border(
        bottom: BorderSide(width: 0.5, color: Colors.black12),
      )),
      child: Column(
        children: <Widget>[
          BangumiTopHeaderTitleWidget(
            title: modules.title,
          ),
          _listView()
        ],
      ),
    );
  }

  Widget _listView() {
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.only(bottom: 15),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: modules.items.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _singleCell(index,modules.items[index]);
        },
      ),
    );
  }

  Widget _singleCell(int index,BangumiModuleItem item) {
    bool isBottom = modules.items.length == index + 1;
    return Container(
      alignment: Alignment.topLeft,
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.fromLTRB(0, 13, 13, 13),
      margin: EdgeInsets.only(left: 13),
      decoration: BoxDecoration(
          color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5,color: isBottom ? Colors.white : Colors.black12)
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _coverImage(item),
          Container(
//            color: Colors.red,
            width: ScreenUtil().setWidth(375-115)-26,
            height: ScreenUtil().setHeight(70),
            padding: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(14), color: Color(0xff444444)),
                ),
                Text(
                  item.desc,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color(0xff888888), fontSize: ScreenUtil().setSp(12)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _coverImage(BangumiModuleItem item) {
    return Container(
//      padding: EdgeInsets.only(left: 11,right: 11),
      width: ScreenUtil().setWidth(115),
      height: ScreenUtil().setHeight(70),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: CachedNetworkImage(
          imageUrl: item.cover,
          fit: BoxFit.fill,
          width: ScreenUtil().setWidth(115),
          height: ScreenUtil().setHeight(70),
          placeholder: (context, url) => Container(
              width: ScreenUtil().setWidth(115),
              height: ScreenUtil().setHeight(70),
              color: Color(0xffe7e7e7),
              child: Center(
                child: Image.asset(
                  'images/image_tv.png',
                  width: 60,
                ),
              )),
        ),
      ),
    );
  }
}
