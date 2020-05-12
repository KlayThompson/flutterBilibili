class HomeChannelCommonModel {
  int code;
  String message;
  int ttl;
  CommonChannelListModel data;

  HomeChannelCommonModel({this.code, this.message, this.ttl, this.data});

  HomeChannelCommonModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    ttl = json['ttl'];
    data = json['data'] != null ? new CommonChannelListModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['ttl'] = this.ttl;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class CommonChannelListModel {
  String cover;
  List<CommonChannelModel> items;

  CommonChannelListModel({this.cover, this.items});

  CommonChannelListModel.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    if (json['items'] != null) {
      items = new List<CommonChannelModel>();
      json['items'].forEach((v) { items.add(new CommonChannelModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CommonChannelModel {
  String cardType;
  String cardGoto;
  CommonChannelArgs args;
  List<CommonChannelBannerItem> bannerItem;
  List<CommonChannelListViewDataModel> items;
  String goto;
  String param;
  String title;

  CommonChannelModel({this.cardType, this.cardGoto, this.args, this.bannerItem, this.items, this.goto, this.param, this.title});

  CommonChannelModel.fromJson(Map<String, dynamic> json) {
    cardType = json['card_type'];
    cardGoto = json['card_goto'];
    args = json['args'] != null ? new CommonChannelArgs.fromJson(json['args']) : null;
    if (json['banner_item'] != null) {
      bannerItem = new List<CommonChannelBannerItem>();
      json['banner_item'].forEach((v) { bannerItem.add(new CommonChannelBannerItem.fromJson(v)); });
    }
    if (json['items'] != null) {
      items = new List<CommonChannelListViewDataModel>();
      json['items'].forEach((v) { items.add(new CommonChannelListViewDataModel.fromJson(v)); });
    }
    goto = json['goto'];
    param = json['param'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_type'] = this.cardType;
    data['card_goto'] = this.cardGoto;
    if (this.args != null) {
      data['args'] = this.args.toJson();
    }
    if (this.bannerItem != null) {
      data['banner_item'] = this.bannerItem.map((v) => v.toJson()).toList();
    }
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['goto'] = this.goto;
    data['param'] = this.param;
    data['title'] = this.title;
    return data;
  }
}

class CommonChannelBannerItem {
  int id;
  String title;
  String image;
  String hash;
  String uri;
  int serverType;
  int cmMark;

  CommonChannelBannerItem({this.id, this.title, this.image, this.hash, this.uri, this.serverType, this.cmMark});

  CommonChannelBannerItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    hash = json['hash'];
    uri = json['uri'];
    serverType = json['server_type'];
    cmMark = json['cm_mark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['hash'] = this.hash;
    data['uri'] = this.uri;
    data['server_type'] = this.serverType;
    data['cm_mark'] = this.cmMark;
    return data;
  }
}

class CommonChannelListViewDataModel {
  String cardType;
  String goto;
  String param;
  String cover;
  String title;
  String uri;
  CommonChannelArgs args;
  String coverLeftText1;
  int coverLeftIcon1;
  String coverLeftText2;
  int coverLeftIcon2;
  String coverRightText;
  CommonChannelDescButton descButton;

  CommonChannelListViewDataModel({this.cardType, this.goto, this.param, this.cover, this.title, this.uri, this.args, this.coverLeftText1, this.coverLeftIcon1, this.coverLeftText2, this.coverLeftIcon2, this.coverRightText, this.descButton});

  CommonChannelListViewDataModel.fromJson(Map<String, dynamic> json) {
    cardType = json['card_type'];
    goto = json['goto'];
    param = json['param'];
    cover = json['cover'];
    title = json['title'];
    uri = json['uri'];
    args = json['args'] != null ? new CommonChannelArgs.fromJson(json['args']) : null;
    coverLeftText1 = json['cover_left_text_1'];
    coverLeftIcon1 = json['cover_left_icon_1'];
    coverLeftText2 = json['cover_left_text_2'];
    coverLeftIcon2 = json['cover_left_icon_2'];
    coverRightText = json['cover_right_text'];
    descButton = json['desc_button'] != null ? new CommonChannelDescButton.fromJson(json['desc_button']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_type'] = this.cardType;
    data['goto'] = this.goto;
    data['param'] = this.param;
    data['cover'] = this.cover;
    data['title'] = this.title;
    data['uri'] = this.uri;
    if (this.args != null) {
      data['args'] = this.args.toJson();
    }
    data['cover_left_text_1'] = this.coverLeftText1;
    data['cover_left_icon_1'] = this.coverLeftIcon1;
    data['cover_left_text_2'] = this.coverLeftText2;
    data['cover_left_icon_2'] = this.coverLeftIcon2;
    data['cover_right_text'] = this.coverRightText;
    if (this.descButton != null) {
      data['desc_button'] = this.descButton.toJson();
    }
    return data;
  }
}

class CommonChannelArgs {
  int upId;
  String upName;
  int rid;
  String rname;
  int aid;

  CommonChannelArgs({this.upId, this.upName, this.rid, this.rname, this.aid});

  CommonChannelArgs.fromJson(Map<String, dynamic> json) {
    upId = json['up_id'];
    upName = json['up_name'];
    rid = json['rid'];
    rname = json['rname'];
    aid = json['aid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['up_id'] = this.upId;
    data['up_name'] = this.upName;
    data['rid'] = this.rid;
    data['rname'] = this.rname;
    data['aid'] = this.aid;
    return data;
  }
}

class CommonChannelDescButton {
  String text;
  String event;
  int type;
  String eventV2;

  CommonChannelDescButton({this.text, this.event, this.type, this.eventV2});

  CommonChannelDescButton.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    event = json['event'];
    type = json['type'];
    eventV2 = json['event_v2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['event'] = this.event;
    data['type'] = this.type;
    data['event_v2'] = this.eventV2;
    return data;
  }
}

