import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_rank_item_list.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_top_header_title.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BangumiRank extends StatelessWidget {
  BangumiModules modules;
  BangumiRank(this.modules);

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
          _centerListWidget(),
          _bottomFullRank()
        ],
      ),
    );
  }

  Widget _centerListWidget() {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(320),
      color: Colors.white,
      child: ListView.builder(
        itemCount: modules.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BangumiRankItemListWidget(item: modules.items[index],isCenter: index == 1,);
        },
      ),
    );
  }

  Widget _bottomFullRank() {
    return InkWell(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.only(bottom: 12),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('查看完整榜单',style: TextStyle(color: Colors.pink[300]),),
              SizedBox(width: 10,),
              Icon(CupertinoIcons.forward,color: Colors.pink[300],)
            ],
          )
      ),
    );
  }
}
