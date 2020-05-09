class Popular {
  int code;
  PopularConfig config;
  List<PopularItem> data;
  String message;
  String ver;

  Popular({this.code, this.config, this.data, this.message, this.ver});

  Popular.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    config =
    json['config'] != null ? new PopularConfig.fromJson(json['config']) : null;
    if (json['data'] != null) {
      data = new List<PopularItem>();
      json['data'].forEach((v) {
        data.add(new PopularItem.fromJson(v));
      });
    }
    message = json['message'];
    ver = json['ver'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['ver'] = this.ver;
    return data;
  }
}

class PopularConfig {
  String itemTitle;
  String headImage;
  String bottomText;
  String bottomTextCover;
  String bottomTextUrl;
  List<PopularTopItem> topItems;
  PopularShareInfo shareInfo;

  PopularConfig(
      {this.itemTitle,
        this.headImage,
        this.bottomText,
        this.bottomTextCover,
        this.bottomTextUrl,
        this.topItems,
        this.shareInfo});

  PopularConfig.fromJson(Map<String, dynamic> json) {
    itemTitle = json['item_title'];
    headImage = json['head_image'];
    bottomText = json['bottom_text'];
    bottomTextCover = json['bottom_text_cover'];
    bottomTextUrl = json['bottom_text_url'];
    if (json['top_items'] != null) {
      topItems = new List<PopularTopItem>();
      json['top_items'].forEach((v) {
        topItems.add(new PopularTopItem.fromJson(v));
      });
    }
    shareInfo = json['share_info'] != null
        ? new PopularShareInfo.fromJson(json['share_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_title'] = this.itemTitle;
    data['head_image'] = this.headImage;
    data['bottom_text'] = this.bottomText;
    data['bottom_text_cover'] = this.bottomTextCover;
    data['bottom_text_url'] = this.bottomTextUrl;
    if (this.topItems != null) {
      data['top_items'] = this.topItems.map((v) => v.toJson()).toList();
    }
    if (this.shareInfo != null) {
      data['share_info'] = this.shareInfo.toJson();
    }
    return data;
  }
}

class PopularTopItem {
  String icon;
  String title;
  String moduleId;
  String uri;
  int entranceId;
  PopularTopItemBubble bubble;
  String topPhoto;

  PopularTopItem(
      {this.icon,
        this.title,
        this.moduleId,
        this.uri,
        this.entranceId,
        this.bubble,
        this.topPhoto});

  PopularTopItem.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    moduleId = json['module_id'];
    uri = json['uri'];
    entranceId = json['entrance_id'];
    bubble =
    json['bubble'] != null ? new PopularTopItemBubble.fromJson(json['bubble']) : null;
    topPhoto = json['top_photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['module_id'] = this.moduleId;
    data['uri'] = this.uri;
    data['entrance_id'] = this.entranceId;
    if (this.bubble != null) {
      data['bubble'] = this.bubble.toJson();
    }
    data['top_photo'] = this.topPhoto;
    return data;
  }
}

class PopularTopItemBubble {
  String bubbleContent;
  int version;
  int stime;

  PopularTopItemBubble({this.bubbleContent, this.version, this.stime});

  PopularTopItemBubble.fromJson(Map<String, dynamic> json) {
    bubbleContent = json['bubble_content'];
    version = json['version'];
    stime = json['stime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bubble_content'] = this.bubbleContent;
    data['version'] = this.version;
    data['stime'] = this.stime;
    return data;
  }
}

class PopularShareInfo {
  String currentTopPhoto;
  String currentTitle;
  String shareDesc;
  String shareTitle;
  String shareSubTitle;
  String shareIcon;

  PopularShareInfo(
      {this.currentTopPhoto,
        this.currentTitle,
        this.shareDesc,
        this.shareTitle,
        this.shareSubTitle,
        this.shareIcon});

  PopularShareInfo.fromJson(Map<String, dynamic> json) {
    currentTopPhoto = json['current_top_photo'];
    currentTitle = json['current_title'];
    shareDesc = json['share_desc'];
    shareTitle = json['share_title'];
    shareSubTitle = json['share_sub_title'];
    shareIcon = json['share_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_top_photo'] = this.currentTopPhoto;
    data['current_title'] = this.currentTitle;
    data['share_desc'] = this.shareDesc;
    data['share_title'] = this.shareTitle;
    data['share_sub_title'] = this.shareSubTitle;
    data['share_icon'] = this.shareIcon;
    return data;
  }
}

class PopularItem {
  String cardType;
  String cardGoto;
  String goto;
  String param;
  String bvid;
  String cover;
  String title;
  String uri;
  PopularItemThreePoint threePoint;
  CommonArgs args;
  PlayerArgs playerArgs;
  int idx;
  Mask mask;
  String fromType;
  List<PopularThreePointV2> threePointV2;
  CommonAvatar avatar;
  String coverLeftText1;
  String coverLeftText2;
  String coverLeftText3;
  String desc;
  int canPlay;
  String topRcmdReason;
  int officialIcon;
  TopRcmdReasonStyle topRcmdReasonStyle;
  Button descButton;
  List<Item> item;

  PopularItem(
      {this.cardType,
        this.cardGoto,
        this.goto,
        this.param,
        this.bvid,
        this.cover,
        this.title,
        this.uri,
        this.threePoint,
        this.args,
        this.playerArgs,
        this.idx,
        this.mask,
        this.fromType,
        this.threePointV2,
        this.avatar,
        this.coverLeftText1,
        this.coverLeftText2,
        this.coverLeftText3,
        this.desc,
        this.canPlay,
        this.topRcmdReason,
        this.officialIcon,
        this.topRcmdReasonStyle,
        this.descButton,
        this.item});

  PopularItem.fromJson(Map<String, dynamic> json) {
    cardType = json['card_type'];
    cardGoto = json['card_goto'];
    goto = json['goto'];
    param = json['param'];
    bvid = json['bvid'];
    cover = json['cover'];
    title = json['title'];
    uri = json['uri'];
    threePoint = json['three_point'] != null
        ? new PopularItemThreePoint.fromJson(json['three_point'])
        : null;
    args = json['args'] != null ? new CommonArgs.fromJson(json['args']) : null;
    playerArgs = json['player_args'] != null
        ? new PlayerArgs.fromJson(json['player_args'])
        : null;
    idx = json['idx'];
    mask = json['mask'] != null ? new Mask.fromJson(json['mask']) : null;
    fromType = json['from_type'];
    if (json['three_point_v2'] != null) {
      threePointV2 = new List<PopularThreePointV2>();
      json['three_point_v2'].forEach((v) {
        threePointV2.add(new PopularThreePointV2.fromJson(v));
      });
    }
    avatar =
    json['avatar'] != null ? new CommonAvatar.fromJson(json['avatar']) : null;
    coverLeftText1 = json['cover_left_text_1'];
    coverLeftText2 = json['cover_left_text_2'];
    coverLeftText3 = json['cover_left_text_3'];
    desc = json['desc'];
    canPlay = json['can_play'];
    topRcmdReason = json['top_rcmd_reason'];
    officialIcon = json['official_icon'];
    topRcmdReasonStyle = json['top_rcmd_reason_style'] != null
        ? new TopRcmdReasonStyle.fromJson(json['top_rcmd_reason_style'])
        : null;
    descButton = json['desc_button'] != null
        ? new Button.fromJson(json['desc_button'])
        : null;
    if (json['item'] != null) {
      item = new List<Item>();
      json['item'].forEach((v) {
        item.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_type'] = this.cardType;
    data['card_goto'] = this.cardGoto;
    data['goto'] = this.goto;
    data['param'] = this.param;
    data['bvid'] = this.bvid;
    data['cover'] = this.cover;
    data['title'] = this.title;
    data['uri'] = this.uri;
    if (this.threePoint != null) {
      data['three_point'] = this.threePoint.toJson();
    }
    if (this.args != null) {
      data['args'] = this.args.toJson();
    }
    if (this.playerArgs != null) {
      data['player_args'] = this.playerArgs.toJson();
    }
    data['idx'] = this.idx;
    if (this.mask != null) {
      data['mask'] = this.mask.toJson();
    }
    data['from_type'] = this.fromType;
    if (this.threePointV2 != null) {
      data['three_point_v2'] =
          this.threePointV2.map((v) => v.toJson()).toList();
    }
    if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
    data['cover_left_text_1'] = this.coverLeftText1;
    data['cover_left_text_2'] = this.coverLeftText2;
    data['cover_left_text_3'] = this.coverLeftText3;
    data['desc'] = this.desc;
    data['can_play'] = this.canPlay;
    data['top_rcmd_reason'] = this.topRcmdReason;
    data['official_icon'] = this.officialIcon;
    if (this.topRcmdReasonStyle != null) {
      data['top_rcmd_reason_style'] = this.topRcmdReasonStyle.toJson();
    }
    if (this.descButton != null) {
      data['desc_button'] = this.descButton.toJson();
    }
    if (this.item != null) {
      data['item'] = this.item.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PopularItemThreePoint {
  int watchLater;

  PopularItemThreePoint({this.watchLater});

  PopularItemThreePoint.fromJson(Map<String, dynamic> json) {
    watchLater = json['watch_later'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['watch_later'] = this.watchLater;
    return data;
  }
}

class CommonArgs {
  int upId;
  String upName;
  int rid;
  String rname;
  int aid;

  CommonArgs({this.upId, this.upName, this.rid, this.rname, this.aid});

  CommonArgs.fromJson(Map<String, dynamic> json) {
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

class PlayerArgs {
  int aid;
  int cid;
  String type;

  PlayerArgs({this.aid, this.cid, this.type});

  PlayerArgs.fromJson(Map<String, dynamic> json) {
    aid = json['aid'];
    cid = json['cid'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aid'] = this.aid;
    data['cid'] = this.cid;
    data['type'] = this.type;
    return data;
  }
}

class Mask {
  CommonAvatar avatar;
  Button button;

  Mask({this.avatar, this.button});

  Mask.fromJson(Map<String, dynamic> json) {
    avatar =
    json['avatar'] != null ? new CommonAvatar.fromJson(json['avatar']) : null;
    button =
    json['button'] != null ? new Button.fromJson(json['button']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
    if (this.button != null) {
      data['button'] = this.button.toJson();
    }
    return data;
  }
}

class CommonAvatar {
  String cover;
  String text;
  String uri;
  String event;
  String eventV2;

  CommonAvatar({this.cover, this.text, this.uri, this.event, this.eventV2});

  CommonAvatar.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    text = json['text'];
    uri = json['uri'];
    event = json['event'];
    eventV2 = json['event_v2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['text'] = this.text;
    data['uri'] = this.uri;
    data['event'] = this.event;
    data['event_v2'] = this.eventV2;
    return data;
  }
}

class Button {
  String text;
  String param;
  String event;
  int type;
  String eventV2;

  Button({this.text, this.param, this.event, this.type, this.eventV2});

  Button.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    param = json['param'];
    event = json['event'];
    type = json['type'];
    eventV2 = json['event_v2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['param'] = this.param;
    data['event'] = this.event;
    data['type'] = this.type;
    data['event_v2'] = this.eventV2;
    return data;
  }
}

class PopularThreePointV2 {
  String title;
  String type;

  PopularThreePointV2({this.title, this.type});

  PopularThreePointV2.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    return data;
  }
}

class TopRcmdReasonStyle {
  String text;
  String textColor;
  String borderColor;
  String textColorNight;
  String borderColorNight;
  int bgStyle;
  String bgColor;
  String bgColorNight;

  TopRcmdReasonStyle(
      {this.text,
        this.textColor,
        this.borderColor,
        this.textColorNight,
        this.borderColorNight,
        this.bgStyle,
        this.bgColor,
        this.bgColorNight});

  TopRcmdReasonStyle.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    textColor = json['text_color'];
    borderColor = json['border_color'];
    textColorNight = json['text_color_night'];
    borderColorNight = json['border_color_night'];
    bgStyle = json['bg_style'];
    bgColor = json['bg_color'];
    bgColorNight = json['bg_color_night'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['text_color'] = this.textColor;
    data['border_color'] = this.borderColor;
    data['text_color_night'] = this.textColorNight;
    data['border_color_night'] = this.borderColorNight;
    data['bg_style'] = this.bgStyle;
    data['bg_color'] = this.bgColor;
    data['bg_color_night'] = this.bgColorNight;
    return data;
  }
}

class Item {
  String title;
  String cover;
  String uri;
  String param;
  String bvid;
  CommonArgs args;
  String goto;
  String coverLeftText1;
  int coverLeftIcon1;
  String coverRightText;

  Item(
      {this.title,
        this.cover,
        this.uri,
        this.param,
        this.bvid,
        this.args,
        this.goto,
        this.coverLeftText1,
        this.coverLeftIcon1,
        this.coverRightText});

  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cover = json['cover'];
    uri = json['uri'];
    param = json['param'];
    bvid = json['bvid'];
    args = json['args'] != null ? new CommonArgs.fromJson(json['args']) : null;
    goto = json['goto'];
    coverLeftText1 = json['cover_left_text_1'];
    coverLeftIcon1 = json['cover_left_icon_1'];
    coverRightText = json['cover_right_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['cover'] = this.cover;
    data['uri'] = this.uri;
    data['param'] = this.param;
    data['bvid'] = this.bvid;
    if (this.args != null) {
      data['args'] = this.args.toJson();
    }
    data['goto'] = this.goto;
    data['cover_left_text_1'] = this.coverLeftText1;
    data['cover_left_icon_1'] = this.coverLeftIcon1;
    data['cover_right_text'] = this.coverRightText;
    return data;
  }
}

