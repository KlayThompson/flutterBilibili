import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class StoreBannerWidget extends StatelessWidget {
  final StoreCardItem item;
  StoreBannerWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(120),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: Swiper(
          itemCount: this.item.data.list.length,
          onTap: (index) {
            CardDataListModel banner = this.item.data.list[index];
            Routes.navigateTo(context, Routes.webView,
                params: {'title': banner.name, 'url': banner.url});
          },
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl: 'https:${this.item.data.list[index].pic}',
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                width: ScreenUtil().setWidth(345),
                height: ScreenUtil().setHeight(120),
                color: Colors.transparent,
              ),
            );
          },
          autoplayDelay: 3000,
          autoplay: true,
          pagination: SwiperPagination(
              alignment: Alignment.bottomRight,
              builder: DotSwiperPaginationBuilder(
                  color: Colors.white,
                  activeColor: Colors.pink[300],
                  size: ScreenUtil().setWidth(7),
                  activeSize: ScreenUtil().setWidth(7))),
        ),
      ),
    );
  }
}
