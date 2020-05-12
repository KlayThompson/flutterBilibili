import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_like_buttton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BangumiRankItemListWidget extends StatelessWidget {
  final BangumiModuleItem item;
  final bool isCenter;
  BangumiRankItemListWidget({this.item,this.isCenter=false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: isCenter ? 0 : 12,right: isCenter ? 0 : 12),
      width: ScreenUtil().setWidth(315),
      height: ScreenUtil().setHeight(320),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xfff4f4f4),Colors.white]
        ),
      ),
      child: Column(
        children: <Widget>[
          _topTileWidget(),
          ListView.builder(
            itemCount: item.cards.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _singleCell(item.cards[index],index);
            },
          )
        ],
      ),
    );
  }

  Widget _topTileWidget() {
    return Container(
//      color: Colors.pink,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(13, 18, 13, 0),
      child: Text(item.title,style: TextStyle(fontSize: ScreenUtil().setSp(18),color: Color(0xff444444)),),
    );
  }

  Widget _singleCell(BangumiRankCard card,int index) {
    return Container(
      padding: EdgeInsets.fromLTRB(13, 13, 0, 13),
      alignment: Alignment.topLeft,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: _coverImage(card),
          ),
          Expanded(
            flex: 3,
            child: _centerTitleInfo(card),
          ),
          Expanded(
            flex: 1,
            child: _rightRankTVIcon(index),
          )
        ],
      ),
    );
  }

  Widget _coverImage(BangumiRankCard card) {
    return Container(
      width: ScreenUtil().setWidth(125),
      height: ScreenUtil().setHeight(68),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,right: 0,bottom: 0,top: 0,
            child: Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: card.cover,
                  fit: BoxFit.cover,
                  width: ScreenUtil().setWidth(125),
                  height: ScreenUtil().setHeight(68),
                  placeholder: (context, url) => Container(
                      width: ScreenUtil().setWidth(125),
                      height: ScreenUtil().setHeight(68),
                      color: Color(0xffe7e7e7),
                      child: Center(
                        child: Image.asset('images/image_tv.png',width: 60,),
                      )
                  ),
                ),
              ),
            ),
          ),
          card.badgeInfo == null ? Container() :
          Positioned(
            top: 3,
            right: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
              decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text(card.badgeInfo.text,style: TextStyle(color: Colors.white,fontSize: 11),),
            ),
          ),
          Positioned(
            left: 0,top: 0,
            child: BangumiLikeButtonWidget(card.oid),
          )
        ],
      ),
    );
  }

  Widget _centerTitleInfo(BangumiRankCard card) {
    return Container(
      padding: EdgeInsets.only(left: 10),
//      color: Colors.pink,
      height: ScreenUtil().setHeight(68),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(card.title,style: TextStyle(color: Color(0xff444444),fontSize: ScreenUtil().setSp(14)),maxLines: 2,overflow: TextOverflow.ellipsis,),
          Text(card.pts,style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color(0xff888888)),maxLines: 1,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }

  Widget _rightRankTVIcon(int index) {
    Color textColor = Colors.white;
    Color bgColor = Colors.white;
    if (index == 0) {
      textColor = Color(0xffD5A729);
      bgColor = Color(0xffFDDC72);
    } else if (index == 1) {
      textColor = Color(0xff96A4B5);
      bgColor = Color(0xffCDD9E7);
    } else {
      textColor = Color(0xffA38772);
      bgColor = Color(0xffDAC4B1);
    }
    return Container(
//      alignment: Alignment.centerRight,
      height: ScreenUtil().setHeight(68),
//      color: Colors.pink,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Icon(IconData(0xe61c, fontFamily: "appIconFonts"),color: bgColor,size: 32,),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('${index + 1}',style: TextStyle(color: textColor,fontSize: 11),),
          )
        ],
      ),
    );
  }
}
