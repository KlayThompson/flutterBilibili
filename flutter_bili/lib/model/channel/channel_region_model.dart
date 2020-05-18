class ChannelRegionListModel {
  int code;
  String message;
  int ttl;
  List<ChannelRegionModel> data;

  ChannelRegionListModel({this.code, this.message, this.ttl, this.data});

  ChannelRegionListModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    ttl = json['ttl'];
    if (json['data'] != null) {
      data = new List<ChannelRegionModel>();
      json['data'].forEach((v) {
        data.add(new ChannelRegionModel.fromJson(v));
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

class ChannelRegionModel {
  int tid;
  int reid;
  String name;
  String logo;
  String goto;
  String param;
  int type;
  String uri;

  ChannelRegionModel(
      {this.tid,
        this.reid,
        this.name,
        this.logo,
        this.goto,
        this.param,
        this.type,
        this.uri});

  ChannelRegionModel.fromJson(Map<String, dynamic> json) {
    tid = json['tid'];
    reid = json['reid'];
    name = json['name'];
    logo = json['logo'];
    goto = json['goto'];
    param = json['param'];
    type = json['type'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tid'] = this.tid;
    data['reid'] = this.reid;
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['goto'] = this.goto;
    data['param'] = this.param;
    data['type'] = this.type;
    data['uri'] = this.uri;
    return data;
  }
}

