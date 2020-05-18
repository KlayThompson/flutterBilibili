import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/common_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_bili/widget/common/small_cover_image.dart';
import 'package:flutter_screenutil/screenutil.dart';

class CommonGridCellWidget extends StatelessWidget {
  final CommonSmallCardModel model;
  final CommonButton descButton;
  CommonGridCellWidget({this.model,this.descButton});
  final double _margin = 10;
  @override
  Widget build(BuildContext context) {
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
        width: (ScreenUtil().setWidth(375) - 3 * _margin) / 2 - 0.01,
        color: Colors.white,
        padding: EdgeInsets.only(top: 13,bottom: 13),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            _coverImageAndInfoWidget(),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              height: ScreenUtil().setHeight(35),
              child: Text(
                model.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Color(0xff444444), fontSize: 14),
              ),
            ),
            SizedBox(height: 2,),
            this.descButton == null ? Container() :
            Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: Text(
                this.descButton.text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Color(0xff888888), fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _coverImageAndInfoWidget() {
    return Container(
      height: ScreenUtil().setHeight(120),
      child: Stack(
        children: <Widget>[
          Positioned(child: _coverImage(),left: 0,top: 0,bottom: 0,right: 0,),
          Positioned(child: _playInfo(),left: 0,bottom: 0,right: 0,),
          Positioned(child: _topLeftBadge(),left: 0,top: 0,)
        ],
      ),
    );
  }
  //大图
  Widget _coverImage() {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: CachedNetworkImage(
          imageUrl: model.cover ?? 'http://i1.hdslb.com/bfs/archive/480c8fffa395531f9d6ed59fc98a67097c8e6486.jpg',
          fit: BoxFit.cover,
          placeholder: (context, url) => Container(
//          width: ScreenUtil().setWidth(345),
            height: ScreenUtil().setHeight(120),
            color: Color(0xffe7e7e7),
            child: Center(
              child: Image.asset('images/image_tv.png',width: 90,),
            ),
          ),
        ),
      ),
    );
  }

  //大图下面播放量评论量播放时长
  Widget _playInfo() {
    return Container(
      height: ScreenUtil().setHeight(33),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
          gradient: LinearGradient(
              colors: [Color.fromRGBO(0, 0, 0, 0.6),Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: ScreenUtil().setHeight(33),
            padding: EdgeInsets.only(bottom: 5),
//                color: Colors.pink,
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                _singleMenu(IconData(0xe666, fontFamily: "appIconFonts"), model.coverLeftText1 ?? ''),
                SizedBox(width: 8,),
                model.coverLeftText2 != null ? _singleMenu(IconData(0xe665, fontFamily: "appIconFonts"), model.coverLeftText2 ?? '') : Container()
              ],
            ),
          ),
          Container(
//                color: Colors.pink,
            padding: EdgeInsets.only(right: 10,bottom: 5),
            alignment: Alignment.bottomRight,
            child: Text(model.coverLeftText3 ?? '',style: TextStyle(fontSize: 11,color: Colors.white),),
          )
        ],
      ),
    );
  }
  Widget _singleMenu(IconData icon,String value) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      child: Row(
        children: <Widget>[
          Icon(icon,size: 15,color: Colors.white,),
          SizedBox(width: 5,),
          Text(value,style: TextStyle(fontSize: 11,color: Colors.white),overflow: TextOverflow.ellipsis,maxLines: 1,textAlign: TextAlign.start,),
        ],
      ),
    );
  }

  Widget _topLeftBadge() {
    return model.badge == null ? Container() :
    Container(
      height: 22,
      width: 60,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,right: 0,top: 0,bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5)),
              child: Image.network(model.badge.iconBgUrl,fit: BoxFit.cover,),
            ),
          ),
          Positioned(
            right: 5,
            top: 2,
            child: Text(model.badge.text,style: TextStyle(color: Colors.white,fontSize: 11),),
          )
        ],
      ),
    );
  }
}
