import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_popular_model.dart';
import 'package:flutter_bili/widget/common/small_cover_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularThreeItemAllV2 extends StatelessWidget {
  final PopularItem item;
  PopularThreeItemAllV2(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(214),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_topInfoWidget(), _threeItemListView()],
      ),
    );
  }

  //头部信息
  Widget _topInfoWidget() {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(60),
      child: Row(
        children: <Widget>[_avatar(), _userNameTag(), _descButton()],
      ),
    );
  }

  //头像
  Widget _avatar() {
    return Container(
      width: ScreenUtil().setWidth(55),
      height: ScreenUtil().setHeight(60),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl: item.cover,
                width: 40,
                height: 40,
                placeholder: (context, url) => Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  //用户名和tag
  Widget _userNameTag() {
    Color textColor = Color(int.parse('0x' +
        item.topRcmdReasonStyle.textColor
            .substring(1, item.topRcmdReasonStyle.textColor.length)));
    Color borderColor = Color(int.parse('0x' +
        item.topRcmdReasonStyle.borderColor
            .substring(1, item.topRcmdReasonStyle.borderColor.length)));
    Color bgColor = item.topRcmdReasonStyle.bgColor == null
        ? Colors.white
        : Color(int.parse('0x' +
            item.topRcmdReasonStyle.bgColor
                .substring(1, item.topRcmdReasonStyle.bgColor.length)));

    return Container(
      width: ScreenUtil().setWidth(240),
      height: ScreenUtil().setHeight(60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(item.title,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(17),
                  fontWeight: FontWeight.w500,
                  color: Color(0xff444444)),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
          Container(
            padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(width: 1, color: borderColor),
                color: bgColor),
            child: Text(
              item.topRcmdReasonStyle.text,
              style: TextStyle(color: textColor, fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }

  //desc_button
  Widget _descButton() {
    return InkWell(
      onTap: () {},
      child: Container(
//        color: Colors.pink,
        width: ScreenUtil().setWidth(80),
        height: ScreenUtil().setHeight(60),
        alignment: Alignment.center,
        child: Container(
          width: 65,
          height: 25,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 1, color: Colors.pink[300])),
          child: Text(
            item.descButton.text,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(13), color: Colors.pink[300]),
          ),
        ),
      ),
    );
  }

  //横向的list view
  Widget _threeItemListView() {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(150),
      child: ListView.builder(
          itemCount: item.item.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _singleCell(index);
          }),
    );
  }

  //list view的cell
  Widget _singleCell(index) {
    ThreeItem model = item.item[index];
    return Container(
//      color: Colors.pink,
      width: ScreenUtil().setWidth(160),
      height: ScreenUtil().setHeight(145),
      padding: EdgeInsets.fromLTRB(index == 0 ? 10 : 5, 5, index == item.item.length - 1 ? 10 : 5, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SmallCoverImageWidget(
            cover: model.cover,
            coverLeftText1: model.coverLeftText1,
            coverLeftText2: null,
            coverRightText: model.coverRightText,
            height: 100,
            width: 150,
          ),
          SizedBox(height: 5,),
          Container(
            height: ScreenUtil().setHeight(40),
            padding: EdgeInsets.only(left: 5,right: 5),
            child: Text(
              model.title,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(13), color: Color(0xff444444)),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
