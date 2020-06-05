import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_screenutil/screenutil.dart';

class StoreCategoryNavWidget extends StatelessWidget {
  final List<StoreCardItem> items;
  StoreCategoryNavWidget(this.items);
  final double _margin = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      child: Wrap(
        children: items.map((model) {
          return _singleCell(model);
        }).toList(),
      ),
    );
  }

  Widget _singleCell(StoreCardItem model) {
    double iconWidth = ScreenUtil().setWidth(53);
    return InkWell(
      onTap: () {
      },
      child: Container(
        width: (ScreenUtil().setWidth(375) - 2 * _margin) / 4 - 0.01,
        color: Colors.white,
        padding: EdgeInsets.only(top: 10),
        height: 95,
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: 'https:${model.data.imageUrl}',
              fit: BoxFit.cover,
              width: iconWidth,
              height: iconWidth,
              placeholder: (context, url) => Container(
                  width: iconWidth,
                  height: iconWidth,
                  color: Color(0xfff4f4f4),
                  child: Center(
                    child: Image.asset(
                      'images/image_tv.png',
                      width: 20,
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Text(
                model.data.name,
                style: TextStyle(color: Color(0xff444444), fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
