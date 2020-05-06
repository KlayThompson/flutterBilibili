import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class RecommendBanner extends StatelessWidget {
  final List<RecommendBannerItem> list;
  RecommendBanner(this.list);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(200),
      child: Swiper(
        itemCount: this.list.length,
        onTap: (index) {
          RecommendBannerItem banner = this.list[index];
          Routes.navigateTo(context, Routes.webView,
              params: {'title': banner.title, 'url': banner.uri});
        },
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: this.list[index].image,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                width: ScreenUtil().setWidth(375),
                height: ScreenUtil().setHeight(200),
                color: Colors.transparent,
              ),
            ),
          );
        },
        autoplayDelay: 3000,
        autoplay: true,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            builder: DotSwiperPaginationBuilder(
                color: Color.fromRGBO(142, 128, 129, 1),
                activeColor: Colors.white,
                size: ScreenUtil().setWidth(7),
                activeSize: ScreenUtil().setWidth(7))),
      ),
    );
  }
}
