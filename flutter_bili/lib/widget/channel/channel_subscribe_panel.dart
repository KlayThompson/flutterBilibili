import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/screenutil.dart';

class ChannelSubscribePanel extends StatelessWidget {
  final List<ChannelSquareItem> items;
  ChannelSubscribePanel(this.items);

//  List<Map> tests = [
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//    {
//      'title': '全部频道',
//      'cover': 'https://i0.hdslb.com/bfs/app/e551e2b4350f85c955750ad6043143d9bb96ab21.png'
//    },
//  ];

  @override
  Widget build(BuildContext context) {
    //先对items进行排序
    this.items.sort((a,b) => (a.position).compareTo(b.position));
    //如果超过十个进行截取
    if (items.length > 10) {
      this.items.sublist(0,9);
    }

    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.only(bottom: 11),
      child: Wrap(
        children: this.items.map((val){
            return _singleCell(context, val);
        }).toList(),
      )
    );
  }

  Widget _singleCell(BuildContext context,ChannelSquareItem model) {
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
        width: ScreenUtil().setWidth(375)/5 - 0.01,
      color: Colors.white,
      padding: EdgeInsets.only(top: 13),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(ScreenUtil().setWidth(50)/2),
                    child: CachedNetworkImage(
                      imageUrl: model.cover,
                      fit: BoxFit.cover,
                      width: ScreenUtil().setWidth(50),
                      placeholder: (context, url) => Container(
                        width: ScreenUtil().setWidth(50),
                        height: ScreenUtil().setWidth(50),
                          color: Color(0xff8ECDF0),
                          child: Center(
                            child: Image.asset(
                              'images/image_tv.png',
                              width: 30,
                            ),
                          )
                      ),
                    ),
                  ),
                ),
//                model.coverLabel == null ? Container() :
                Align(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(model.coverLabel ?? '',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700),),
                        Text(model.coverLabel2 ?? '',style: TextStyle(color: Colors.white,fontSize: 13),),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 11,),
            Text(model.title,style: TextStyle(color: Color(0xff444444),fontSize: ScreenUtil().setSp(13)),),
          ],
        ),
      ),
    );
  }

}
