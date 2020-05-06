import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';

class RecommendSmallCell extends StatelessWidget {
  final RecommendItem item;
  RecommendSmallCell({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff4f4f4),
      child: Card(
        child: Center(child: Text(item.title),),
      ),
    );
  }
}
