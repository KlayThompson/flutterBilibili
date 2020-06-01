import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeLineCellPicturesWidget extends StatelessWidget {
  final TimeLineDetailItem item;
  TimeLineCellPicturesWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: _nineGrid(),
    );
  }

  //九宫格图片布局
  Widget _nineGrid() {

    List<String> picList = [];
    item.pictures.forEach((model) {
      picList.add(model.imgSrc);
    });
    //如果包含九宫格图片
    if (picList != null && picList.length > 0) {
      //一共有几张图片
      num len = picList.length;
      //算出一共有几行
      int rowLength = 0;
      //一共有几列
      int colLength = 0;
      if (len <= 3) {
        colLength = len;
        rowLength = 1;
      } else if (len <= 6) {
        colLength = 3;
        rowLength = 2;
        if (len == 4) {
          colLength = 2;
        }
      } else {
        colLength = 3;
        rowLength = 3;
      }
      //一行的组件
      List<Widget> imgList = [];
      //一行包含三个图片组件
      List<List<Widget>> rows = [];
      //遍历行数和列数,计算出宽高生成每个图片组件,
      for (var row = 0; row < rowLength; row++) {
        List<Widget> rowArr = [];
        for (var col = 0; col < colLength; col++) {
          num index = row * colLength + col;
          num screenWidth = ScreenUtil().setWidth(375);
          double cellWidth = (screenWidth - 40) / 3;
          double itemW = 0;
          double itemH = 0;
          itemW = cellWidth;
          itemH = cellWidth;
          if (len == 1) {
            rowArr.add(Container(
              constraints: BoxConstraints(
                  maxHeight: 250, maxWidth: 250, minHeight: 200, minWidth: 200),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CachedNetworkImage(
                  imageUrl: picList[index],
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                      color: Color(0xfff6f6f6),
                      child: Center(
                        child: Image.asset(
                          'images/image_tv.png',
                          width: 30,
                        ),
                      )
                  ),
                ),
              ),
            ));
          } else {
            if (index < len) {
              EdgeInsets mMargin;
              if (len == 4) {
                if (index == 0) {
                  mMargin = const EdgeInsets.only(right: 2.5, bottom: 5);
                } else if (index == 1) {
                  mMargin = const EdgeInsets.only(left: 2.5, bottom: 5);
                } else if (index == 2) {
                  mMargin = const EdgeInsets.only(right: 2.5);
                } else if (index == 3) {
                  mMargin = const EdgeInsets.only(left: 2.5);
                }
              } else {
                if (index == 1 || index == 4 || index == 7) {
                  mMargin =
                  const EdgeInsets.only(left: 2.5, right: 2.5, bottom: 5);
                } else if (index == 0 || index == 3 || index == 6) {
                  mMargin = const EdgeInsets.only(right: 2.5, bottom: 5);
                } else if (index == 2 || index == 5 || index == 8) {
                  mMargin = const EdgeInsets.only(left: 2.5, bottom: 5);
                }
              }

              rowArr.add(Container(
                child: Container(
                  margin: mMargin,
                  child: CachedNetworkImage(
                      imageUrl: picList[index],
                      fit: BoxFit.cover,
                      width: itemW,
                      height: itemH,
                      placeholder: (context, url) => Container(
                          width: itemW,
                          height: itemH,
                          color: Color(0xfff6f6f6),
                          child: Center(
                            child: Image.asset(
                              'images/image_tv.png',
                              width: 30,
                            ),
                          )
                      ),
                    )
                ),
              ));
            }
          }
        }
        rows.add(rowArr);
      }
      for (var row in rows) {
        imgList.add(Row(
          children: row,
        ));
      }

      return Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          children: imgList,
        ),
      );
    } else {
      return Container(
        height: 0,
      );
    }
  }
}
