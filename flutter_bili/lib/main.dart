import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/pages/index.dart';
import 'package:flutter_bili/provider/bangumi_provider.dart';
import 'package:flutter_bili/provider/home_common_channel_provider.dart';
import 'package:flutter_bili/provider/home_common_provider.dart';
import 'package:flutter_bili/provider/live_provider.dart';
import 'package:flutter_bili/provider/popular_provider.dart';
import 'package:flutter_bili/provider/recommend_provider.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  final router = Router();
  Routes.configureRoutes(router);
  Routes.router = router;

  var homeCommonProvider = HomeCommonProvider();
  var liveProvider = LiveProvider();
  var recommendProvider = RecommendProvider();
  var popularProvider = PopularProvider();
  var bangumiProvider = BangumiProvider();
  var commonChannelModel = HomeCommonChannelProvider();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: homeCommonProvider),
      ChangeNotifierProvider.value(value: liveProvider),
      ChangeNotifierProvider.value(value: recommendProvider),
      ChangeNotifierProvider.value(value: popularProvider),
      ChangeNotifierProvider.value(value: bangumiProvider),
      ChangeNotifierProvider.value(value: commonChannelModel)
    ],
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor:Colors.pink[300],
      ),
      home: IndexPage(),
    );
  }
}

