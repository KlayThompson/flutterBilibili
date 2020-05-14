import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/common_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/screenutil.dart';

class CommonNav5Widget extends StatelessWidget {
  final List<CommonSimpleItem> simpleItems;
  CommonNav5Widget({this.simpleItems});
  final double _margin = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().setWidth(375),
        padding: EdgeInsets.only(bottom: 11, left: _margin, right: _margin),
        child: Wrap(
          children: this.simpleItems.map((val) {
            return _singleCell(context, val);
          }).toList(),
        ));
  }

  Widget _singleCell(BuildContext context, CommonSimpleItem model) {
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
        width: (ScreenUtil().setWidth(375) - 2 * _margin) / 5 - 0.01,
        color: Colors.white,
        padding: EdgeInsets.only(top: 13),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(ScreenUtil().setWidth(50) / 2),
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
                    )),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              color: Colors.white,
              child: Text(
                model.title,
                style: TextStyle(color: Color(0xff444444), fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
