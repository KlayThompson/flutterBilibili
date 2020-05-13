import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_common_channel_model.dart';
import 'package:flutter_bili/widget/common/small_cover_image.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_top_header_title.dart';
import 'package:flutter_screenutil/screenutil.dart';

class OtherChannelMultiItemWidget extends StatelessWidget {
  final CommonChannelModel channelModel;
  OtherChannelMultiItemWidget(this.channelModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      child: Column(
        children: <Widget>[
          BangumiTopHeaderTitleWidget(
            title: channelModel.title,
          ),
          _gridView()
        ],
      ),
    );
  }

  Widget _gridView() {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
      width: ScreenUtil().setWidth(375),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 0.9,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: channelModel.items.map((val) {
          return _smallCoverV2(val);
        }).toList(),
      ),
    );
  }

  Widget _smallCoverV2(CommonChannelListViewDataModel model) {
    return Container(
      color: Color(0xfff4f4f4),
      alignment: Alignment.topLeft,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SmallCoverImageWidget(
              cover: model.cover,
              coverLeftText1: model.coverLeftText1,
              coverLeftText2: model.coverLeftText2,
              coverRightText: model.coverRightText,
            ),
            _bottomWidget(model)
          ],
        ),
      ),
    );
  }

  //bottom title and tag three point
  Widget _bottomWidget(CommonChannelListViewDataModel model) {
    return Container(
//      color: Colors.pink,
      height: ScreenUtil().setHeight(68),
    alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // title
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(5, 3, 5, 0),
            child: Text(
              model.title,
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(14), color: Color(0xff444444)),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5,bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(
              model.descButton.text ?? '',
              style: TextStyle(fontSize: 12, color: Colors.black38),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
