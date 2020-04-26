import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/index.dart';
import 'package:flutter_bili/pages/webview_page.dart';


// 根目录
var rootHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return IndexPage();
});

// 设置页 - 示例：不传参数
//var expertiseLevelHandler =
//Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//  return ExpertiseLevelPage();
//});


// 网页加载 - 示例：传多个字符串参数
var webViewHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  // params内容为  {title: [我是标题哈哈哈], url: [https://www.baidu.com/]}
  String title = params['title']?.first;
  String url = params['url']?.first;
  return WebViewPage(
    url: url,
    title: title,
  );
});

// 示例：传多个model参数
//var webViewHandler =
//Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
//
//  LocalNavList _model1 =
//  LocalNavList.fromJson(convert.jsonDecode(params['localNavList'][0]));
//
//  return WebViewWidget(
//    localNavList: _model1,
//  );
//});