
class CommonButton {
  String text;
  String uri;

  CommonButton({this.text, this.uri});

  CommonButton.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['uri'] = this.uri;
    return data;
  }
}

class CommonBadge {
  String text;
  String iconBgUrl;

  CommonBadge({this.text, this.iconBgUrl});

  CommonBadge.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    iconBgUrl = json['icon_bg_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['icon_bg_url'] = this.iconBgUrl;
    return data;
  }
}

class CommonSmallCardModel {
  String title;
  String cover;
  String uri;
  String param;
  String goto;
  String coverLeftText1;
  int coverLeftIcon1;
  String coverLeftText2;
  int coverLeftIcon2;
  String coverLeftText3;
  int position;
  CommonBadge badge;

  CommonSmallCardModel({this.title, this.cover, this.uri, this.param, this.goto, this.coverLeftText1, this.coverLeftIcon1, this.coverLeftText2, this.coverLeftIcon2, this.coverLeftText3, this.position, this.badge});

  CommonSmallCardModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cover = json['cover'];
    uri = json['uri'];
    param = json['param'];
    goto = json['goto'];
    coverLeftText1 = json['cover_left_text_1'];
    coverLeftIcon1 = json['cover_left_icon_1'];
    coverLeftText2 = json['cover_left_text_2'];
    coverLeftIcon2 = json['cover_left_icon_2'];
    coverLeftText3 = json['cover_left_text_3'];
    position = json['position'];
    badge = json['badge'] != null ? new CommonBadge.fromJson(json['badge']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['uri'] = this.uri;
    data['param'] = this.param;
    data['goto'] = this.goto;
    data['cover_left_text_1'] = this.coverLeftText1;
    data['cover_left_icon_1'] = this.coverLeftIcon1;
    data['cover_left_text_2'] = this.coverLeftText2;
    data['cover_left_icon_2'] = this.coverLeftIcon2;
    data['cover_left_text_3'] = this.coverLeftText3;
    data['position'] = this.position;
    if (this.badge != null) {
      data['badge'] = this.badge.toJson();
    }
    return data;
  }
}

class CommonCardParentModel {
  String cardType;
  String cardGoto;
  String goto;
  String param;
  String title;
  String uri;
  CommonButton descButton;
  int idx;
  int id;
  bool isButton;
  bool isAtten;
  CommonButton descButton2;
  String desc1;
  List<CommonSmallCardModel> items;

  CommonCardParentModel({this.cardType, this.cardGoto, this.goto, this.param, this.title, this.uri, this.descButton,this.idx, this.id, this.isButton, this.isAtten, this.descButton2, this.desc1, this.items});

  CommonCardParentModel.fromJson(Map<String, dynamic> json) {
    cardType = json['card_type'];
    cardGoto = json['card_goto'];
    goto = json['goto'];
    param = json['param'];
    title = json['title'];
    uri = json['uri'];
    descButton = json['desc_button'] != null ? new CommonButton.fromJson(json['desc_button']) : null;
    idx = json['idx'];
    id = json['id'];
    isButton = json['is_button'];
    isAtten = json['is_atten'];
    descButton2 = json['desc_button_2'] != null ? new CommonButton.fromJson(json['desc_button_2']) : null;
    desc1 = json['desc_1'];
    if (json['items'] != null) {
      items = new List<CommonSmallCardModel>();
      json['items'].forEach((v) { items.add(new CommonSmallCardModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_type'] = this.cardType;
    data['card_goto'] = this.cardGoto;
    data['goto'] = this.goto;
    data['param'] = this.param;
    data['title'] = this.title;
    data['uri'] = this.uri;
    if (this.descButton != null) {
      data['desc_button'] = this.descButton.toJson();
    }

    data['idx'] = this.idx;
    data['id'] = this.id;
    data['is_button'] = this.isButton;
    data['is_atten'] = this.isAtten;
    if (this.descButton2 != null) {
      data['desc_button_2'] = this.descButton2.toJson();
    }
    data['desc_1'] = this.desc1;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CommonSimpleItem {
  int id;
  String param;
  String title;
  String cover;
  String goto;
  String uri;
  String desc;
  CommonButton button;
  int position;

  CommonSimpleItem({this.id, this.param, this.title, this.cover, this.goto, this.uri, this.desc, this.button,this.position});

  CommonSimpleItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    param = json['param'];
    title = json['title'];
    cover = json['cover'];
    goto = json['goto'];
    uri = json['uri'];
    desc = json['desc'];
    button = json['button'] != null ? new CommonButton.fromJson(json['button']) : null;
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['param'] = this.param;
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['goto'] = this.goto;
    data['uri'] = this.uri;
    data['desc'] = this.desc;
    if (this.button != null) {
      data['button'] = this.button.toJson();
    }
    data['position'] = this.position;
    return data;
  }
}

class CommonRelationModel {
  int status;
  int isFollow;
  int isFollowed;

  CommonRelationModel({this.status, this.isFollow, this.isFollowed});

  CommonRelationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    isFollow = json['is_follow'];
    isFollowed = json['is_followed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['is_follow'] = this.isFollow;
    data['is_followed'] = this.isFollowed;
    return data;
  }
}
