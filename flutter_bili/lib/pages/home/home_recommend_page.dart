import 'package:flutter/material.dart';
import 'package:flutter_bili/provider/recommend_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:provider/provider.dart';

class HomeRecommendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getHomeData(context),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _getChildWidget(),
          );
        } else {
          return FirstLoadingWidget();
        }
        }
    );
  }

  Future _getHomeData(BuildContext context) async{
    await Provider.of<RecommendProvider>(context,listen: false).getHomeRecommendData();
    return 'ok';
  }

  List<Widget> _getChildWidget() {
    return [];
  }
}
