import 'package:flutter/material.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/popular/popular_top_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/popular_provider.dart';

class HomePopularPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getPopularListData(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<PopularProvider>(
            builder: (context,provider,child) {
              return Container(
                child: ListView(
                  children: <Widget>[
                    PopularTopWidget(provider.popular.config.topItems)
                  ],
                ),
              );
            }
          );
        } else {
          return FirstLoadingWidget();
        }
      },
    );
  }

  Future _getPopularListData(BuildContext context) async{
    await Provider.of<PopularProvider>(context,listen: false).getHomePopularListData();
    return 'ok';
  }
}
