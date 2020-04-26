import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_live_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class LiveBannerWidget extends StatelessWidget {
  final List<BannerList> list;
  LiveBannerWidget(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: ScreenUtil().setWidth(345),
      height: ScreenUtil().setHeight(120),
      child: Swiper(
        itemCount: this.list.length,
        onTap: (index) {
          BannerList banner = this.list[index];
          Routes.navigateTo(context, Routes.webView,
              params: {'title': banner.title, 'url': banner.link});
        },
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: this.list[index].pic,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                width: ScreenUtil().setWidth(345),
                height: ScreenUtil().setHeight(120),
                color: Colors.transparent,
              ),
            ),
          );
        },
        autoplayDelay: 5000,
        autoplay: true,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            builder: DotSwiperPaginationBuilder(
                color: Colors.white,
                activeColor: Colors.pink[300],
                size: ScreenUtil().setWidth(7),
                activeSize: ScreenUtil().setWidth(7))),
      ),
    );
  }
}
