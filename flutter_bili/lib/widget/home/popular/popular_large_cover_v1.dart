import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_popular_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularLargeCoverV1 extends StatelessWidget {
  final PopularItem item;
  PopularLargeCoverV1(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(115),
      width: ScreenUtil().setWidth(375),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5,color: Colors.black12)
        )
      ),
      child: Row(
        children: <Widget>[
          _leftCoverImage(),
          _rightInfo()
        ],
      ),
    );
  }

  //封面图片
  Widget _leftCoverImage() {
    return Container(
      width: ScreenUtil().setWidth(164),
      height: ScreenUtil().setHeight(95),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 12,
            right: 0,
            bottom: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: item.cover,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: ScreenUtil().setWidth(152),
                  height: ScreenUtil().setHeight(95),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            right: 8,
            bottom: 5,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.6),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text(item.coverLeftText1,style: TextStyle(fontSize: 13,color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
  
  //右边简介信息
  Widget _rightInfo() {
    String str = item.coverLeftText2 + item.desc.substring(item.args.upName.length,item.desc.length);

    return Container(
      width: ScreenUtil().setWidth(211),
      height: ScreenUtil().setHeight(115),
      padding: EdgeInsets.fromLTRB(12, 5, 18, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(item.title,style: TextStyle(fontSize: ScreenUtil().setSp(14),color: Color(0xff444444)),maxLines: 2,overflow: TextOverflow.ellipsis,),
          item.topRcmdReason == null ? Container() : _recommendReasonTag(),
          Text(item.args.upName,style: TextStyle(color: Color(0xff888888),fontSize: 13),maxLines: 1,overflow: TextOverflow.ellipsis,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Text(str,style: TextStyle(color: Color(0xff888888),fontSize: 13),maxLines: 1,overflow: TextOverflow.ellipsis,),
              ),
              Expanded(
              flex: 1,
              child: Container(
//                color: Colors.pink,
                alignment: Alignment.centerRight,
                child: Icon(IconData(0xe61b, fontFamily: "appIconFonts"),size: 21,color: Color(0xff999999),),
              ),
              )
            ],
          )
        ],
      ),
    );
  }

  //推荐原因
  Widget _recommendReasonTag() {
    Color textColor = Color(int.parse('0x' + item.topRcmdReasonStyle.textColor.substring(1,item.topRcmdReasonStyle.textColor.length)));
    Color borderColor = Color(int.parse('0x' + item.topRcmdReasonStyle.borderColor.substring(1,item.topRcmdReasonStyle.borderColor.length)));
    Color bgColor = item.topRcmdReasonStyle.bgColor == null ? Colors.white : Color(int.parse('0x' + item.topRcmdReasonStyle.bgColor.substring(1,item.topRcmdReasonStyle.bgColor.length)));

    return Container(
      padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(width: 1,color: borderColor),
        color: bgColor
      ),
      child: Text(item.topRcmdReasonStyle.text,style: TextStyle(color: textColor,fontSize: 12),),
    );
  }
}
