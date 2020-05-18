import 'package:flutter/material.dart';
import 'package:flutter_bili/model/common_model.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ChannelDynamicBanner extends StatelessWidget {
  final List<CommonSimpleItem> items;
  ChannelDynamicBanner(this.items);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(45),
      child: Swiper(
        itemCount: this.items.length,
        scrollDirection: Axis.vertical,
        loop: false,
        physics: NeverScrollableScrollPhysics(),
        autoplay: true,
        itemBuilder: (context, index) {
          return Container(
            height: ScreenUtil().setHeight(45),
            margin: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                color: Color(0xfff4f4f4),
                borderRadius: BorderRadius.circular(5)),
            child: _detailRow(items[index]),
          );
        },
      ),
    );
  }

  Widget _detailRow(CommonSimpleItem item) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
//                      color: Colors.purple,
                      alignment: Alignment.center,
//                      padding: EdgeInsets.only(left: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: Image.network(
                          item.cover,
                          fit: BoxFit.fill,
                          width: 34,
                          height: 34,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: _centerText(item),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: _rightButton(item),
            )
          ],
        ),
      ),
    );
  }

  Widget _centerText(CommonSimpleItem item) {
    return Container(
//      color: Colors.purple,
//      width: 200,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            item.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(13), color: Color(0xff444444)),
          ),
          Text(
            item.desc,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(11), color: Color(0xff777777)),
          )
        ],
      ),
    );
  }

  Widget _rightButton(CommonSimpleItem item) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        decoration: BoxDecoration(
            color: Colors.pink[300], borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(
            item.button.text,
            style:
            TextStyle(fontSize: ScreenUtil().setSp(14), color: Colors.white),
          ),
        ),
      ),
    );
  }
}
