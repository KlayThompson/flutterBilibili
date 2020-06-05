import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreBlockWidget extends StatelessWidget {
  final List<StoreCardItem> items;
  StoreBlockWidget(this.items);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: ScreenUtil().setWidth(375),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items.map((model){
          return _singleBlock(model);
        }).toList(),
      ),
    );
  }

  Widget _singleBlock(StoreCardItem model) {
    double iconHeight = ScreenUtil().setWidth(53);

    return Container(
      child: CachedNetworkImage(
        imageUrl: 'https:${model.data.imageUrl}',
        fit: BoxFit.cover,
        height: iconHeight,
        placeholder: (context, url) => Container(
            height: iconHeight,
            color: Color(0xfff4f4f4),
            child: Center(
              child: Image.asset(
                'images/image_tv.png',
                width: 20,
              ),
            )),
      ),
    );
  }
}
