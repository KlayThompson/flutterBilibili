import 'dart:io';
import 'package:dio/dio.dart';

Future requestData(url,method, {params}) async {
  try{
//    print('开始请求数据......................url=$url');
    print('开始请求数据......................');
    Dio dio = new Dio();
    dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded").toString();
    Response res;
    if (method == 'get') {
      res = params == null ? res = await dio.get(url) : await dio.get(url, queryParameters: params);
    } else if (method == 'post') {
      res = params == null ? res = await dio.post(url) : await dio.post(url, data: params);
    }
//    print(res.toString());
    if (res.statusCode == 200) {
      return res.data;
    } else {
      throw Exception('后端接口异常');
    }
  }catch(e){
    return print('ERROR:==================================>$e');
  }
}