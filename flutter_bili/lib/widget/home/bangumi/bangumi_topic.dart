import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bangumi_top_header_title.dart';

class BangumiTopic extends StatelessWidget {
  BangumiModules modules;
  BangumiTopic(this.modules);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5,color: Colors.black12),
          )
      ),
      child: Column(
        children: <Widget>[
          BangumiTopHeaderTitleWidget(title: modules.title,hideRight: false,),
          _listView()
        ],
      ),
    );
  }

  Widget _listView() {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      width: ScreenUtil().setWidth(375),
      child: ListView.separated(
        shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index) {
            return _singleCell(modules.items[index]);
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: modules.items.length
      ),
    );
  }

  Widget _singleCell(BangumiModuleItem item) {
    return Container(
      width: ScreenUtil().setWidth(375),
      child: Column(
        children: <Widget>[
          _coverImage(item),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 5,left: 11),
            child: Text(item.title,style: TextStyle(fontSize: ScreenUtil().setSp(14),color: Color(0xff444444)),maxLines: 2,overflow: TextOverflow.ellipsis,),
          )
        ],
      ),
    );
  }

  Widget _coverImage(BangumiModuleItem item) {
    return Container(
    padding: EdgeInsets.only(left: 11,right: 11),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: CachedNetworkImage(
          imageUrl: item.cover,
          fit: BoxFit.fill,
          placeholder: (context, url) => Container(
              width: ScreenUtil().setWidth(350),
              height: ScreenUtil().setHeight(115),
              color: Color(0xffe7e7e7),
              child: Center(
                child: Image.asset('images/image_tv.png',width: 60,),
              )
          ),
        ),
      ),
    );
  }
}
