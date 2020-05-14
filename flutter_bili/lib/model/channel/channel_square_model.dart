import 'package:flutter_bili/model/common_model.dart';

class ChannelSquare {
  int code;
  String message;
  int ttl;
  List<ChannelSquareData> data;

  ChannelSquare({this.code, this.message, this.ttl, this.data});

  ChannelSquare.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    ttl = json['ttl'];
    if (json['data'] != null) {
      data = new List<ChannelSquareData>();
      json['data'].forEach((v) {
        data.add(new ChannelSquareData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['ttl'] = this.ttl;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChannelSquareData {
  String modelType;
  String modelTitle;
  int hasMore;
  String offset;
  List<ChannelSquareItem> items;
  ChannelRcmItems rcmItems;
  String label;

  ChannelSquareData(
      {this.modelType,
        this.modelTitle,
        this.hasMore,
        this.offset,
        this.items,
        this.label,
        this.rcmItems
      });

  ChannelSquareData.fromJson(Map<String, dynamic> json) {
    modelType = json['model_type'];
    modelTitle = json['model_title'];
    hasMore = json['has_more'];
    offset = json['offset'];
    if (json['items'] != null && json['items'] is List) {
      items = new List<ChannelSquareItem>();
      json['items'].forEach((v) {
        items.add(new ChannelSquareItem.fromJson(v));
      });
    } else if (json['items'] != null && json['items'] is Map) {
      rcmItems = ChannelRcmItems.fromJson(json['items']);
    }
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model_type'] = this.modelType;
    data['model_title'] = this.modelTitle;
    data['has_more'] = this.hasMore;
    data['offset'] = this.offset;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['label'] = this.label;
    if (this.rcmItems != null) {
      data['items'] = this.rcmItems.toJson();
    }
    return data;
  }
}

class ChannelSquareItem {
  String title;
  String cover;
  String uri;
  String coverLabel;
  String coverLabel2;
  int position;

  ChannelSquareItem(
      {this.title,
        this.cover,
        this.uri,
        this.coverLabel,
        this.coverLabel2,
        this.position});

  ChannelSquareItem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cover = json['cover'];
    uri = json['uri'];
    coverLabel = json['cover_label'];
    coverLabel2 = json['cover_label2'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['uri'] = this.uri;
    data['cover_label'] = this.coverLabel;
    data['cover_label2'] = this.coverLabel2;
    data['position'] = this.position;
    return data;
  }
}

class ChannelRcmItems {
  List<CommonSimpleItem> list;
  List<CommonSimpleItem> rcmDynamic;
  List<CommonSmallCardModel> rcmd;

  ChannelRcmItems({this.list, this.rcmDynamic, this.rcmd});

  ChannelRcmItems.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = new List<CommonSimpleItem>();
      json['list'].forEach((v) { list.add(new CommonSimpleItem.fromJson(v)); });
    }
    if (json['dynamic'] != null) {
      rcmDynamic = new List<CommonSimpleItem>();
      json['dynamic'].forEach((v) { rcmDynamic.add(new CommonSimpleItem.fromJson(v)); });
    }
    if (json['rcmd'] != null) {
      rcmd = new List<CommonSmallCardModel>();
      json['rcmd'].forEach((v) { rcmd.add(new CommonSmallCardModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    if (this.rcmDynamic != null) {
      data['dynamic'] = this.rcmDynamic.map((v) => v.toJson()).toList();
    }
    if (this.rcmd != null) {
      data['rcmd'] = this.rcmd.map((v) => v.toJson()).toList();
    }
    return data;
  }
}




