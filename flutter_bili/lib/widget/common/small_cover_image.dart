import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class SmallCoverImageWidget extends StatelessWidget {

  final String cover;
  final String coverLeftText1;
  final String coverLeftText2;
  final String coverRightText;
  final double width;
  final double height;

  SmallCoverImageWidget({this.cover,this.coverLeftText1,this.coverLeftText2,this.coverRightText,this.width=0,this.height=120});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(this.height),
      width: this.width == 0 ? null : ScreenUtil().setWidth(this.width),
      child: Stack(
        children: <Widget>[
          Positioned(child: _coverImage(),left: 0,top: 0,bottom: 0,right: 0,),
          Positioned(child: _playInfo(),left: 0,bottom: 0,right: 0,)
        ],
      ),
    );
  }

  //大图
  Widget _coverImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
      child: CachedNetworkImage(
        imageUrl: this.cover ?? 'http://i1.hdslb.com/bfs/archive/480c8fffa395531f9d6ed59fc98a67097c8e6486.jpg',
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
    );
  }

  //大图下面播放量评论量播放时长
  Widget _playInfo() {
    return Container(
      height: ScreenUtil().setHeight(33),
      decoration: BoxDecoration(
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
                _singleMenu(IconData(0xe666, fontFamily: "appIconFonts"), this.coverLeftText1 ?? ''),
                SizedBox(width: 8,),
                this.coverLeftText2 != null ? _singleMenu(IconData(0xe665, fontFamily: "appIconFonts"), this.coverLeftText2 ?? '') : Container()
              ],
            ),
          ),
          Container(
//                color: Colors.pink,
            padding: EdgeInsets.only(right: 10,bottom: 5),
            alignment: Alignment.bottomRight,
            child: Text(this.coverRightText ?? '',style: TextStyle(fontSize: 11,color: Colors.white),),
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
}
