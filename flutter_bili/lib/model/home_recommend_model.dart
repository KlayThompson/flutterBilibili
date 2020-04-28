class HomeRecommendModel {
  int code;
  String message;
  int ttl;
  RecommendListModel data;

  HomeRecommendModel({this.code, this.message, this.ttl, this.data});

  HomeRecommendModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    ttl = json['ttl'];
    data = json['data'] != null ? new RecommendListModel.fromJson(json['data']) : null;
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

class RecommendListModel {
  List<RecommendItem> items;
  RecommendListConfig config;

  RecommendListModel({this.items, this.config});

  RecommendListModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<RecommendItem>();
      json['items'].forEach((v) { items.add(new RecommendItem.fromJson(v)); });
    }
    config = json['config'] != null ? new RecommendListConfig.fromJson(json['config']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    return data;
  }
}

class RecommendItem {
  String cardType;
  String cardGoto;
  Args args;
  int idx;
  String hash;
  List<RecommendBannerItem> bannerItem;
  String goto;
  String param;
  String cover;
  String title;
  String uri;
  ThreePoint threePoint;
  PlayerArgs playerArgs;
  List<ThreePointV2> threePointV2;
  String coverLeftText1;
  int coverLeftIcon1;
  String coverLeftText2;
  int coverLeftIcon2;
  String coverRightText;
  String rcmdReason;
  int canPlay;
  RcmdReasonStyle rcmdReasonStyle;
  String coverGif;
  String badge;
  BadgeStyle badgeStyle;
  String desc;
  AdInfo adInfo;
  DescButton descButton;
  int officialIcon;

  RecommendItem({this.cardType, this.cardGoto, this.args, this.idx, this.hash, this.bannerItem, this.goto, this.param, this.cover, this.title, this.uri, this.threePoint, this.playerArgs, this.threePointV2, this.coverLeftText1, this.coverLeftIcon1, this.coverLeftText2, this.coverLeftIcon2, this.coverRightText, this.rcmdReason, this.canPlay, this.rcmdReasonStyle, this.coverGif, this.badge, this.badgeStyle, this.desc, this.adInfo, this.descButton, this.officialIcon});

  RecommendItem.fromJson(Map<String, dynamic> json) {
    cardType = json['card_type'];
    cardGoto = json['card_goto'];
    args = json['args'] != null ? new Args.fromJson(json['args']) : null;
    idx = json['idx'];
    hash = json['hash'];
    if (json['banner_item'] != null) {
      bannerItem = new List<RecommendBannerItem>();
      json['banner_item'].forEach((v) { bannerItem.add(new RecommendBannerItem.fromJson(v)); });
    }
    goto = json['goto'];
    param = json['param'];
    cover = json['cover'];
    title = json['title'];
    uri = json['uri'];
    threePoint = json['three_point'] != null ? new ThreePoint.fromJson(json['three_point']) : null;
    playerArgs = json['player_args'] != null ? new PlayerArgs.fromJson(json['player_args']) : null;
    if (json['three_point_v2'] != null) {
      threePointV2 = new List<ThreePointV2>();
      json['three_point_v2'].forEach((v) { threePointV2.add(new ThreePointV2.fromJson(v)); });
    }
    coverLeftText1 = json['cover_left_text_1'];
    coverLeftIcon1 = json['cover_left_icon_1'];
    coverLeftText2 = json['cover_left_text_2'];
    coverLeftIcon2 = json['cover_left_icon_2'];
    coverRightText = json['cover_right_text'];
    rcmdReason = json['rcmd_reason'];
    canPlay = json['can_play'];
    rcmdReasonStyle = json['rcmd_reason_style'] != null ? new RcmdReasonStyle.fromJson(json['rcmd_reason_style']) : null;
    coverGif = json['cover_gif'];
    badge = json['badge'];
    badgeStyle = json['badge_style'] != null ? new BadgeStyle.fromJson(json['badge_style']) : null;
    desc = json['desc'];
    adInfo = json['ad_info'] != null ? new AdInfo.fromJson(json['ad_info']) : null;
    descButton = json['desc_button'] != null ? new DescButton.fromJson(json['desc_button']) : null;
    officialIcon = json['official_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_type'] = this.cardType;
    data['card_goto'] = this.cardGoto;
    if (this.args != null) {
      data['args'] = this.args.toJson();
    }
    data['idx'] = this.idx;
    data['hash'] = this.hash;
    if (this.bannerItem != null) {
      data['banner_item'] = this.bannerItem.map((v) => v.toJson()).toList();
    }
    data['goto'] = this.goto;
    data['param'] = this.param;
    data['cover'] = this.cover;
    data['title'] = this.title;
    data['uri'] = this.uri;
    if (this.threePoint != null) {
      data['three_point'] = this.threePoint.toJson();
    }
    if (this.playerArgs != null) {
      data['player_args'] = this.playerArgs.toJson();
    }
    if (this.threePointV2 != null) {
      data['three_point_v2'] = this.threePointV2.map((v) => v.toJson()).toList();
    }
    data['cover_left_text_1'] = this.coverLeftText1;
    data['cover_left_icon_1'] = this.coverLeftIcon1;
    data['cover_left_text_2'] = this.coverLeftText2;
    data['cover_left_icon_2'] = this.coverLeftIcon2;
    data['cover_right_text'] = this.coverRightText;
    data['rcmd_reason'] = this.rcmdReason;
    data['can_play'] = this.canPlay;
    if (this.rcmdReasonStyle != null) {
      data['rcmd_reason_style'] = this.rcmdReasonStyle.toJson();
    }
    data['cover_gif'] = this.coverGif;
    data['badge'] = this.badge;
    if (this.badgeStyle != null) {
      data['badge_style'] = this.badgeStyle.toJson();
    }
    data['desc'] = this.desc;
    if (this.adInfo != null) {
      data['ad_info'] = this.adInfo.toJson();
    }
    if (this.descButton != null) {
      data['desc_button'] = this.descButton.toJson();
    }
    data['official_icon'] = this.officialIcon;
    return data;
  }
}

class Args {
  int upId;
  String upName;
  int rid;
  String rname;
  int tid;
  String tname;
  int aid;

  Args({this.upId, this.upName, this.rid, this.rname, this.tid, this.tname, this.aid});

  Args.fromJson(Map<String, dynamic> json) {
    upId = json['up_id'];
    upName = json['up_name'];
    rid = json['rid'];
    rname = json['rname'];
    tid = json['tid'];
    tname = json['tname'];
    aid = json['aid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['up_id'] = this.upId;
    data['up_name'] = this.upName;
    data['rid'] = this.rid;
    data['rname'] = this.rname;
    data['tid'] = this.tid;
    data['tname'] = this.tname;
    data['aid'] = this.aid;
    return data;
  }
}

class RecommendBannerItem {
  int id;
  String title;
  String image;
  String hash;
  String uri;
  String requestId;
  int srcId;
  bool isAdLoc;
  String clientIp;
  int serverType;
  int resourceId;
  int index;
  int cmMark;
  int creativeId;
  bool isAd;
  String adCb;
  String clickUrl;

  RecommendBannerItem({this.id, this.title, this.image, this.hash, this.uri, this.requestId, this.srcId, this.isAdLoc, this.clientIp, this.serverType, this.resourceId, this.index, this.cmMark, this.creativeId, this.isAd, this.adCb, this.clickUrl});

  RecommendBannerItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    hash = json['hash'];
    uri = json['uri'];
    requestId = json['request_id'];
    srcId = json['src_id'];
    isAdLoc = json['is_ad_loc'];
    clientIp = json['client_ip'];
    serverType = json['server_type'];
    resourceId = json['resource_id'];
    index = json['index'];
    cmMark = json['cm_mark'];
    creativeId = json['creative_id'];
    isAd = json['is_ad'];
    adCb = json['ad_cb'];
    clickUrl = json['click_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['hash'] = this.hash;
    data['uri'] = this.uri;
    data['request_id'] = this.requestId;
    data['src_id'] = this.srcId;
    data['is_ad_loc'] = this.isAdLoc;
    data['client_ip'] = this.clientIp;
    data['server_type'] = this.serverType;
    data['resource_id'] = this.resourceId;
    data['index'] = this.index;
    data['cm_mark'] = this.cmMark;
    data['creative_id'] = this.creativeId;
    data['is_ad'] = this.isAd;
    data['ad_cb'] = this.adCb;
    data['click_url'] = this.clickUrl;
    return data;
  }
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}

class ThreePoint {
  List<DislikeReasons> dislikeReasons;
  List<ThreePointFeedbacks> feedbacks;
  int watchLater;

  ThreePoint({this.dislikeReasons, this.feedbacks, this.watchLater});

  ThreePoint.fromJson(Map<String, dynamic> json) {
    if (json['dislike_reasons'] != null) {
      dislikeReasons = new List<DislikeReasons>();
      json['dislike_reasons'].forEach((v) { dislikeReasons.add(new DislikeReasons.fromJson(v)); });
    }
    if (json['feedbacks'] != null) {
      feedbacks = new List<ThreePointFeedbacks>();
      json['feedbacks'].forEach((v) { feedbacks.add(new ThreePointFeedbacks.fromJson(v)); });
    }
    watchLater = json['watch_later'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dislikeReasons != null) {
      data['dislike_reasons'] = this.dislikeReasons.map((v) => v.toJson()).toList();
    }
    if (this.feedbacks != null) {
      data['feedbacks'] = this.feedbacks.map((v) => v.toJson()).toList();
    }
    data['watch_later'] = this.watchLater;
    return data;
  }
}

class ThreePointFeedbacks {
  int id;
  String name;

  ThreePointFeedbacks({this.id, this.name});

  ThreePointFeedbacks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class DislikeReasons {
  int id;
  String name;

  DislikeReasons({this.id, this.name});

  DislikeReasons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class PlayerArgs {
  int aid;
  int cid;
  String type;
  int isLive;
  int roomId;

  PlayerArgs({this.aid, this.cid, this.type, this.isLive, this.roomId});

  PlayerArgs.fromJson(Map<String, dynamic> json) {
    aid = json['aid'];
    cid = json['cid'];
    type = json['type'];
    isLive = json['is_live'];
    roomId = json['room_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aid'] = this.aid;
    data['cid'] = this.cid;
    data['type'] = this.type;
    data['is_live'] = this.isLive;
    data['room_id'] = this.roomId;
    return data;
  }
}

class ThreePointV2 {
  String title;
  String type;
  String subtitle;
  List<ThreePointV2Reasons> reasons;
  int id;

  ThreePointV2({this.title, this.type, this.subtitle, this.reasons, this.id});

  ThreePointV2.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    subtitle = json['subtitle'];
    if (json['reasons'] != null) {
      reasons = new List<ThreePointV2Reasons>();
      json['reasons'].forEach((v) { reasons.add(new ThreePointV2Reasons.fromJson(v)); });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    data['subtitle'] = this.subtitle;
    if (this.reasons != null) {
      data['reasons'] = this.reasons.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class ThreePointV2Reasons {
  String name;
  int id;
  ThreePointV2Reasons({this.name, this.id});
  ThreePointV2Reasons.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}

class RcmdReasonStyle {
  String text;
  String textColor;
  String bgColor;
  String borderColor;
  String textColorNight;
  String bgColorNight;
  String borderColorNight;
  int bgStyle;

  RcmdReasonStyle({this.text, this.textColor, this.bgColor, this.borderColor, this.textColorNight, this.bgColorNight, this.borderColorNight, this.bgStyle});

  RcmdReasonStyle.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    textColor = json['text_color'];
    bgColor = json['bg_color'];
    borderColor = json['border_color'];
    textColorNight = json['text_color_night'];
    bgColorNight = json['bg_color_night'];
    borderColorNight = json['border_color_night'];
    bgStyle = json['bg_style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['text_color'] = this.textColor;
    data['bg_color'] = this.bgColor;
    data['border_color'] = this.borderColor;
    data['text_color_night'] = this.textColorNight;
    data['bg_color_night'] = this.bgColorNight;
    data['border_color_night'] = this.borderColorNight;
    data['bg_style'] = this.bgStyle;
    return data;
  }
}

class BadgeStyle {
  String text;
  String textColor;
  String borderColor;
  String textColorNight;
  String borderColorNight;
  int bgStyle;

  BadgeStyle({this.text, this.textColor, this.borderColor, this.textColorNight, this.borderColorNight, this.bgStyle});

  BadgeStyle.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    textColor = json['text_color'];
    borderColor = json['border_color'];
    textColorNight = json['text_color_night'];
    borderColorNight = json['border_color_night'];
    bgStyle = json['bg_style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['text_color'] = this.textColor;
    data['border_color'] = this.borderColor;
    data['text_color_night'] = this.textColorNight;
    data['border_color_night'] = this.borderColorNight;
    data['bg_style'] = this.bgStyle;
    return data;
  }
}

class AdInfo {
  int creativeId;
  int creativeType;
  int cardType;
  CreativeContent creativeContent;
  String adCb;
  int resource;
  int source;
  String requestId;
  bool isAd;
  int cmMark;
  bool isAdLoc;
  int cardIndex;
  String clientIp;
  AdInfoExtra extra;
  int creativeStyle;

  AdInfo({this.creativeId, this.creativeType, this.cardType, this.creativeContent, this.adCb, this.resource, this.source, this.requestId, this.isAd, this.cmMark, this.isAdLoc, this.cardIndex, this.clientIp, this.extra, this.creativeStyle});

  AdInfo.fromJson(Map<String, dynamic> json) {
    creativeId = json['creative_id'];
    creativeType = json['creative_type'];
    cardType = json['card_type'];
    creativeContent = json['creative_content'] != null ? new CreativeContent.fromJson(json['creative_content']) : null;
    adCb = json['ad_cb'];
    resource = json['resource'];
    source = json['source'];
    requestId = json['request_id'];
    isAd = json['is_ad'];
    cmMark = json['cm_mark'];
    isAdLoc = json['is_ad_loc'];
    cardIndex = json['card_index'];
    clientIp = json['client_ip'];
    extra = json['extra'] != null ? new AdInfoExtra.fromJson(json['extra']) : null;
    creativeStyle = json['creative_style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['creative_id'] = this.creativeId;
    data['creative_type'] = this.creativeType;
    data['card_type'] = this.cardType;
    if (this.creativeContent != null) {
      data['creative_content'] = this.creativeContent.toJson();
    }
    data['ad_cb'] = this.adCb;
    data['resource'] = this.resource;
    data['source'] = this.source;
    data['request_id'] = this.requestId;
    data['is_ad'] = this.isAd;
    data['cm_mark'] = this.cmMark;
    data['is_ad_loc'] = this.isAdLoc;
    data['card_index'] = this.cardIndex;
    data['client_ip'] = this.clientIp;
    if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }
    data['creative_style'] = this.creativeStyle;
    return data;
  }
}

class CreativeContent {
  String title;
  String description;
  String imageUrl;
  String url;
  String clickUrl;
  String showUrl;

  CreativeContent({this.title, this.description, this.imageUrl, this.url, this.clickUrl, this.showUrl});

  CreativeContent.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    imageUrl = json['image_url'];
    url = json['url'];
    clickUrl = json['click_url'];
    showUrl = json['show_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['image_url'] = this.imageUrl;
    data['url'] = this.url;
    data['click_url'] = this.clickUrl;
    data['show_url'] = this.showUrl;
    return data;
  }
}

class AdInfoExtra {
  String layout;
  bool useAdWebV2;
  List<String> showUrls;
  List<String> clickUrls;
  List<DownloadWhitelist> downloadWhitelist;
  List<String> openWhitelist;
//  Card card;
  int reportTime;
  int appstorePriority;
  int salesType;
  bool specialIndustry;
  String specialIndustryTips;
  int preloadLandingpage;
  int upzoneEntranceType;
  int upzoneEntranceReportId;

  AdInfoExtra({this.layout, this.useAdWebV2, this.showUrls, this.clickUrls, this.downloadWhitelist, this.openWhitelist, this.reportTime, this.appstorePriority, this.salesType, this.specialIndustry, this.specialIndustryTips, this.preloadLandingpage, this.upzoneEntranceType, this.upzoneEntranceReportId});

  AdInfoExtra.fromJson(Map<String, dynamic> json) {
    layout = json['layout'];
    useAdWebV2 = json['use_ad_web_v2'];
    showUrls = json['show_urls'].cast<String>();
    clickUrls = json['click_urls'].cast<String>();
    if (json['download_whitelist'] != null) {
      downloadWhitelist = new List<DownloadWhitelist>();
      json['download_whitelist'].forEach((v) { downloadWhitelist.add(new DownloadWhitelist.fromJson(v)); });
    }
    openWhitelist = json['open_whitelist'].cast<String>();
//    card = json['card'] != null ? new Card.fromJson(json['card']) : null;
    reportTime = json['report_time'];
    appstorePriority = json['appstore_priority'];
    salesType = json['sales_type'];
    specialIndustry = json['special_industry'];
    specialIndustryTips = json['special_industry_tips'];
    preloadLandingpage = json['preload_landingpage'];
    upzoneEntranceType = json['upzone_entrance_type'];
    upzoneEntranceReportId = json['upzone_entrance_report_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['layout'] = this.layout;
    data['use_ad_web_v2'] = this.useAdWebV2;
    data['show_urls'] = this.showUrls;
    data['click_urls'] = this.clickUrls;
    if (this.downloadWhitelist != null) {
      data['download_whitelist'] = this.downloadWhitelist.map((v) => v.toJson()).toList();
    }
    data['open_whitelist'] = this.openWhitelist;
//    if (this.card != null) {
//      data['card'] = this.card.toJson();
//    }
    data['report_time'] = this.reportTime;
    data['appstore_priority'] = this.appstorePriority;
    data['sales_type'] = this.salesType;
    data['special_industry'] = this.specialIndustry;
    data['special_industry_tips'] = this.specialIndustryTips;
    data['preload_landingpage'] = this.preloadLandingpage;
    data['upzone_entrance_type'] = this.upzoneEntranceType;
    data['upzone_entrance_report_id'] = this.upzoneEntranceReportId;
    return data;
  }
}

class DownloadWhitelist {
  int size;
  String displayName;
  String apkName;
  String url;
  String md5;
  String icon;

  DownloadWhitelist({this.size, this.displayName, this.apkName, this.url, this.md5, this.icon});

  DownloadWhitelist.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    displayName = json['display_name'];
    apkName = json['apk_name'];
    url = json['url'];
    md5 = json['md5'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['display_name'] = this.displayName;
    data['apk_name'] = this.apkName;
    data['url'] = this.url;
    data['md5'] = this.md5;
    data['icon'] = this.icon;
    return data;
  }
}

//class Card {
//  int cardType;
//  String title;
//  List<Covers> covers;
//  String jumpUrl;
//  String desc;
//  Button button;
//  AdTagStyle adTagStyle;
//  FeedbackPanel feedbackPanel;
//  int foldTime;
//
//  Card({this.cardType, this.title, this.covers, this.jumpUrl, this.desc, this.button, this.adTagStyle, this.feedbackPanel, this.foldTime});
//
//  Card.fromJson(Map<String, dynamic> json) {
//    cardType = json['card_type'];
//    title = json['title'];
//    if (json['covers'] != null) {
//      covers = new List<Covers>();
//      json['covers'].forEach((v) { covers.add(new Covers.fromJson(v)); });
//    }
//    jumpUrl = json['jump_url'];
//    desc = json['desc'];
//    button = json['button'] != null ? new Button.fromJson(json['button']) : null;
//    adTagStyle = json['ad_tag_style'] != null ? new AdTagStyle.fromJson(json['ad_tag_style']) : null;
//    feedbackPanel = json['feedback_panel'] != null ? new FeedbackPanel.fromJson(json['feedback_panel']) : null;
//    foldTime = json['fold_time'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['card_type'] = this.cardType;
//    data['title'] = this.title;
//    if (this.covers != null) {
//      data['covers'] = this.covers.map((v) => v.toJson()).toList();
//    }
//    data['jump_url'] = this.jumpUrl;
//    data['desc'] = this.desc;
//    if (this.button != null) {
//      data['button'] = this.button.toJson();
//    }
//    if (this.adTagStyle != null) {
//      data['ad_tag_style'] = this.adTagStyle.toJson();
//    }
//    if (this.feedbackPanel != null) {
//      data['feedback_panel'] = this.feedbackPanel.toJson();
//    }
//    data['fold_time'] = this.foldTime;
//    return data;
//  }
//}

class Button {
  int type;
  String text;
  String jumpUrl;
  List<String> reportUrls;

  Button({this.type, this.text, this.jumpUrl, this.reportUrls});

  Button.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    text = json['text'];
    jumpUrl = json['jump_url'];
    reportUrls = json['report_urls'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['text'] = this.text;
    data['jump_url'] = this.jumpUrl;
    data['report_urls'] = this.reportUrls;
    return data;
  }
}

class FeedbackPanel {
  String panelTypeText;
  List<FeedbackPanelDetail> feedbackPanelDetail;

  FeedbackPanel({this.panelTypeText, this.feedbackPanelDetail});

  FeedbackPanel.fromJson(Map<String, dynamic> json) {
    panelTypeText = json['panel_type_text'];
    if (json['feedback_panel_detail'] != null) {
      feedbackPanelDetail = new List<FeedbackPanelDetail>();
      json['feedback_panel_detail'].forEach((v) { feedbackPanelDetail.add(new FeedbackPanelDetail.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['panel_type_text'] = this.panelTypeText;
    if (this.feedbackPanelDetail != null) {
      data['feedback_panel_detail'] = this.feedbackPanelDetail.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeedbackPanelDetail {
  String text;
  int moduleId;
  int jumpType;
  String iconUrl;
  String jumpUrl;
  List<SecondaryPanel> secondaryPanel;

  FeedbackPanelDetail({this.text, this.moduleId, this.jumpType, this.iconUrl, this.jumpUrl, this.secondaryPanel});

  FeedbackPanelDetail.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    moduleId = json['module_id'];
    jumpType = json['jump_type'];
    iconUrl = json['icon_url'];
    jumpUrl = json['jump_url'];
    if (json['secondary_panel'] != null) {
      secondaryPanel = new List<SecondaryPanel>();
      json['secondary_panel'].forEach((v) { secondaryPanel.add(new SecondaryPanel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['module_id'] = this.moduleId;
    data['jump_type'] = this.jumpType;
    data['icon_url'] = this.iconUrl;
    data['jump_url'] = this.jumpUrl;
    if (this.secondaryPanel != null) {
      data['secondary_panel'] = this.secondaryPanel.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SecondaryPanel {
  String text;
  int reasonId;

  SecondaryPanel({this.text, this.reasonId});

  SecondaryPanel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    reasonId = json['reason_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['reason_id'] = this.reasonId;
    return data;
  }
}

class DescButton {
  String text;
  String uri;
  String event;
  int type;
  String eventV2;

  DescButton({this.text, this.uri, this.event, this.type, this.eventV2});

  DescButton.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    uri = json['uri'];
    event = json['event'];
    type = json['type'];
    eventV2 = json['event_v2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['uri'] = this.uri;
    data['event'] = this.event;
    data['type'] = this.type;
    data['event_v2'] = this.eventV2;
    return data;
  }
}

class RecommendListConfig {
  int column;
  int autoplayCard;
  int feedCleanAbtest;
  int homeTransferTest;
  int autoRefreshTime;

  RecommendListConfig({this.column, this.autoplayCard, this.feedCleanAbtest, this.homeTransferTest, this.autoRefreshTime});

  RecommendListConfig.fromJson(Map<String, dynamic> json) {
    column = json['column'];
    autoplayCard = json['autoplay_card'];
    feedCleanAbtest = json['feed_clean_abtest'];
    homeTransferTest = json['home_transfer_test'];
    autoRefreshTime = json['auto_refresh_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['column'] = this.column;
    data['autoplay_card'] = this.autoplayCard;
    data['feed_clean_abtest'] = this.feedCleanAbtest;
    data['home_transfer_test'] = this.homeTransferTest;
    data['auto_refresh_time'] = this.autoRefreshTime;
    return data;
  }
}

