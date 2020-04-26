class AppConfigModel {
  int code;
  AvatarConfig config;
  AppBarConfig data;
  String message;

  AppConfigModel({this.code, this.config, this.data, this.message});

  AppConfigModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    config =
    json['config'] != null ? new AvatarConfig.fromJson(json['config']) : null;
    data = json['data'] != null ? new AppBarConfig.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class AvatarConfig {
  String noLoginAvatar;
  int noLoginAvatarType;
  int popupStyle;

  AvatarConfig({this.noLoginAvatar, this.noLoginAvatarType, this.popupStyle});

  AvatarConfig.fromJson(Map<String, dynamic> json) {
    noLoginAvatar = json['no_login_avatar'];
    noLoginAvatarType = json['no_login_avatar_type'];
    popupStyle = json['popup_style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['no_login_avatar'] = this.noLoginAvatar;
    data['no_login_avatar_type'] = this.noLoginAvatarType;
    data['popup_style'] = this.popupStyle;
    return data;
  }
}

class AppBarConfig {
  List<HomeChannelTabModel> tab;
  List<HomeTopRightModel> top;
  List<BottomAppBarModel> bottom;

  AppBarConfig({this.tab, this.top, this.bottom});

  AppBarConfig.fromJson(Map<String, dynamic> json) {
    if (json['tab'] != null) {
      tab = new List<HomeChannelTabModel>();
      json['tab'].forEach((v) {
        tab.add(new HomeChannelTabModel.fromJson(v));
      });
    }
    if (json['top'] != null) {
      top = new List<HomeTopRightModel>();
      json['top'].forEach((v) {
        top.add(new HomeTopRightModel.fromJson(v));
      });
    }
    if (json['bottom'] != null) {
      bottom = new List<BottomAppBarModel>();
      json['bottom'].forEach((v) {
        bottom.add(new BottomAppBarModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tab != null) {
      data['tab'] = this.tab.map((v) => v.toJson()).toList();
    }
    if (this.top != null) {
      data['top'] = this.top.map((v) => v.toJson()).toList();
    }
    if (this.bottom != null) {
      data['bottom'] = this.bottom.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeChannelTabModel {
  int id;
  String name;
  String uri;
  String tabId;
  int pos;
  int defaultSelected;

  HomeChannelTabModel(
      {this.id,
        this.name,
        this.uri,
        this.tabId,
        this.pos,
        this.defaultSelected});

  HomeChannelTabModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    uri = json['uri'];
    tabId = json['tab_id'];
    pos = json['pos'];
    defaultSelected = json['default_selected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['uri'] = this.uri;
    data['tab_id'] = this.tabId;
    data['pos'] = this.pos;
    data['default_selected'] = this.defaultSelected;
    return data;
  }
}

class HomeTopRightModel {
  int id;
  String icon;
  String name;
  String uri;
  String tabId;
  int pos;

  HomeTopRightModel({this.id, this.icon, this.name, this.uri, this.tabId, this.pos});

  HomeTopRightModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    name = json['name'];
    uri = json['uri'];
    tabId = json['tab_id'];
    pos = json['pos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['name'] = this.name;
    data['uri'] = this.uri;
    data['tab_id'] = this.tabId;
    data['pos'] = this.pos;
    return data;
  }
}

class BottomAppBarModel {
  int id;
  String icon;
  String iconSelected;
  String name;
  String uri;
  String tabId;
  int pos;

  BottomAppBarModel(
      {this.id,
        this.icon,
        this.iconSelected,
        this.name,
        this.uri,
        this.tabId,
        this.pos});

  BottomAppBarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
    iconSelected = json['icon_selected'];
    name = json['name'];
    uri = json['uri'];
    tabId = json['tab_id'];
    pos = json['pos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['icon_selected'] = this.iconSelected;
    data['name'] = this.name;
    data['uri'] = this.uri;
    data['tab_id'] = this.tabId;
    data['pos'] = this.pos;
    return data;
  }
}

