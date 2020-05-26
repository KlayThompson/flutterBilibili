import 'package:flutter_bili/provider/popular_provider.dart';
import 'package:flutter_bili/provider/recommend_provider.dart';
import 'package:flutter_bili/provider/time_line_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'bangumi_provider.dart';
import 'channel_provider.dart';
import 'home_common_channel_provider.dart';
import 'home_common_provider.dart';
import 'live_provider.dart';

List<SingleChildStatelessWidget> providers = [
  ChangeNotifierProvider.value(value: HomeCommonProvider()),
  ChangeNotifierProvider.value(value: LiveProvider()),
  ChangeNotifierProvider.value(value: RecommendProvider()),
  ChangeNotifierProvider.value(value: PopularProvider()),
  ChangeNotifierProvider.value(value: BangumiProvider()),
  ChangeNotifierProvider.value(value: HomeCommonChannelProvider()),
  ChangeNotifierProvider.value(value: ChannelProvider()),
  ChangeNotifierProvider.value(value: TimeLineProvider())
];