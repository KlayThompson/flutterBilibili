import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_timeline_select_day.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/bangumi_provider.dart';

class BangumiTimeLine extends StatefulWidget {
  BangumiModules modules;
  BangumiTimeLine(this.modules);
  @override
  _BangumiTimeLineState createState() => _BangumiTimeLineState();
}

class _BangumiTimeLineState extends State<BangumiTimeLine> {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.5,color: Colors.black12)
          ),
      ),
      child: Column(
        children: <Widget>[
          BangumiTimelineTimeSelect(),
          SizedBox(height: 10,),
          _gridView(context),
          _bottomFullTime()
        ],
      ),
    );
  }

  Widget _gridView(BuildContext context) {
    List<Episodes> episodes = [];
    int selectDay = Provider.of<BangumiProvider>(context).selectDay;
    widget.modules.items.forEach((val) {
      if (selectDay == val.dayOfWeek) {
        episodes = val.episodes;
      }
    });
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10),
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(300),
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        childAspectRatio: 0.54,
        physics: NeverScrollableScrollPhysics(),
        children: episodes.map((val) {
          return _singleCell(val);
        }).toList(),
      ),
    );
  }

  Widget _singleCell(Episodes item) {
    return Container(
      width: ScreenUtil().setWidth(190),
      height: ScreenUtil().setHeight(295),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _coverImage(item),
          SizedBox(height: 3,),
          Text(item.title,style: TextStyle(fontSize: ScreenUtil().setSp(14),color: Color(0xff444444)),maxLines: 2,overflow: TextOverflow.ellipsis,),
          SizedBox(height: 3,),
          Text(
            '将更新' + item.pubIndex,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color(0xff888888),),
          ),
        ],
      ),
    );
  }

  Widget _coverImage(Episodes item) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: CachedNetworkImage(
          imageUrl: item.squareCover,
          fit: BoxFit.cover,
//          width: ScreenUtil().setWidth(90),
          height:90,
          placeholder: (context, url) => Container(
              width: 90,
              height: 90,
              color: Color(0xffe7e7e7),
              child: Center(
                child: Image.asset('images/image_tv.png',width: 55,),
              )
          ),
        ),
      ),
    );
  }

  Widget _bottomFullTime() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(bottom: 5),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('查看完整时间表',style: TextStyle(color: Colors.pink[300]),),
            SizedBox(width: 10,),
            Icon(CupertinoIcons.forward,color: Colors.pink[300],)
          ],
        )
      ),
    );
  }
}

