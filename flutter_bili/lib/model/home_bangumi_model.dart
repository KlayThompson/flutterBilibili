class Bangumi {
  int code;
  String message;
  BangumiItem result;

  Bangumi({this.code, this.message, this.result});

  Bangumi.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    result = json['result'] != null ? new BangumiItem.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    return data;
  }
}

class BangumiItem {
  List<BangumiModules> modules;
  List<Regions> regions;

  BangumiItem({this.modules, this.regions});

  BangumiItem.fromJson(Map<String, dynamic> json) {
    if (json['modules'] != null) {
      modules = new List<BangumiModules>();
      json['modules'].forEach((v) { modules.add(new BangumiModules.fromJson(v)); });
    }
    if (json['regions'] != null) {
      regions = new List<Regions>();
      json['regions'].forEach((v) { regions.add(new Regions.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.modules != null) {
      data['modules'] = this.modules.map((v) => v.toJson()).toList();
    }
    if (this.regions != null) {
      data['regions'] = this.regions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BangumiModules {
  BangumiAttr attr;
  List<BangumiModuleHeader> headers;
  List<BangumiModuleItem> items;
  int moduleId;
  Report report;
  int size;
  String style;
  String title;
  int type;

  BangumiModules({this.attr, this.headers, this.items, this.moduleId, this.report, this.size, this.style, this.title, this.type});

  BangumiModules.fromJson(Map<String, dynamic> json) {
    attr = json['attr'] != null ? new BangumiAttr.fromJson(json['attr']) : null;
    if (json['headers'] != null) {
      headers = new List<BangumiModuleHeader>();
      json['headers'].forEach((v) { headers.add(new BangumiModuleHeader.fromJson(v)); });
    }
    if (json['items'] != null) {
      items = new List<BangumiModuleItem>();
      json['items'].forEach((v) { items.add(new BangumiModuleItem.fromJson(v)); });
    }
    moduleId = json['module_id'];
    report = json['report'] != null ? new Report.fromJson(json['report']) : null;
    size = json['size'];
    style = json['style'];
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attr != null) {
      data['attr'] = this.attr.toJson();
    }
    if (this.headers != null) {
      data['headers'] = this.headers.map((v) => v.toJson()).toList();
    }
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['module_id'] = this.moduleId;
    if (this.report != null) {
      data['report'] = this.report.toJson();
    }
    data['size'] = this.size;
    data['style'] = this.style;
    data['title'] = this.title;
    data['type'] = this.type;
    return data;
  }
}

class BangumiAttr {
  int follow;
  int header;
  int random;

  BangumiAttr({this.follow, this.header, this.random});

  BangumiAttr.fromJson(Map<String, dynamic> json) {
    follow = json['follow'];
    header = json['header'];
    random = json['random'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['follow'] = this.follow;
    data['header'] = this.header;
    data['random'] = this.random;
    return data;
  }
}

class BangumiModuleHeader {
  String icon;
  int isExpand;
  String title;
  String url;

  BangumiModuleHeader({this.icon, this.isExpand, this.title, this.url});

  BangumiModuleHeader.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    isExpand = json['is_expand'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['is_expand'] = this.isExpand;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class BangumiModuleItem {
  int aid;
  String badge;
  BadgeInfo badgeInfo;
  int badgeType;
  int cid;
  String cover;
  String desc;
  int episodeId;
  int isPreview;
  int itemId;
  String link;
  int oid;
  Report report;
  int seasonId;
  int seasonType;
  SourceContent sourceContent;
  Stat stat;
  String title;
  String type;
  int wid;
  int isAuto;
  String date;
  int dateTs;
  int dayOfWeek;
  List<Episodes> episodes;
  int isToday;
  List<Cards> cards;

  BangumiModuleItem({this.aid, this.badge, this.badgeInfo, this.badgeType, this.cid, this.cover, this.desc, this.episodeId, this.isPreview, this.itemId, this.link, this.oid, this.report, this.seasonId, this.seasonType, this.sourceContent, this.stat, this.title, this.type, this.wid, this.isAuto, this.date, this.dateTs, this.dayOfWeek, this.episodes, this.isToday, this.cards});

  BangumiModuleItem.fromJson(Map<String, dynamic> json) {
    aid = json['aid'];
    badge = json['badge'];
    badgeInfo = json['badge_info'] != null ? new BadgeInfo.fromJson(json['badge_info']) : null;
    badgeType = json['badge_type'];
    cid = json['cid'];
    cover = json['cover'];
    desc = json['desc'];
    episodeId = json['episode_id'];
    isPreview = json['is_preview'];
    itemId = json['item_id'];
    link = json['link'];
    oid = json['oid'];
    report = json['report'] != null ? new Report.fromJson(json['report']) : null;
    seasonId = json['season_id'];
    seasonType = json['season_type'];
    sourceContent = json['source_content'] != null ? new SourceContent.fromJson(json['source_content']) : null;
    stat = json['stat'] != null ? new Stat.fromJson(json['stat']) : null;
    title = json['title'];
    type = json['type'];
    wid = json['wid'];
    isAuto = json['is_auto'];
    date = json['date'];
    dateTs = json['date_ts'];
    dayOfWeek = json['day_of_week'];
    if (json['episodes'] != null) {
      episodes = new List<Episodes>();
      json['episodes'].forEach((v) { episodes.add(new Episodes.fromJson(v)); });
    }
    isToday = json['is_today'];
    if (json['cards'] != null) {
      cards = new List<Cards>();
      json['cards'].forEach((v) { cards.add(new Cards.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aid'] = this.aid;
    data['badge'] = this.badge;
    if (this.badgeInfo != null) {
      data['badge_info'] = this.badgeInfo.toJson();
    }
    data['badge_type'] = this.badgeType;
    data['cid'] = this.cid;
    data['cover'] = this.cover;
    data['desc'] = this.desc;
    data['episode_id'] = this.episodeId;
    data['is_preview'] = this.isPreview;
    data['item_id'] = this.itemId;
    data['link'] = this.link;
    data['oid'] = this.oid;
    if (this.report != null) {
      data['report'] = this.report.toJson();
    }
    data['season_id'] = this.seasonId;
    data['season_type'] = this.seasonType;
    if (this.sourceContent != null) {
      data['source_content'] = this.sourceContent.toJson();
    }
    if (this.stat != null) {
      data['stat'] = this.stat.toJson();
    }
    data['title'] = this.title;
    data['type'] = this.type;
    data['wid'] = this.wid;
    data['is_auto'] = this.isAuto;
    data['date'] = this.date;
    data['date_ts'] = this.dateTs;
    data['day_of_week'] = this.dayOfWeek;
    if (this.episodes != null) {
      data['episodes'] = this.episodes.map((v) => v.toJson()).toList();
    }
    data['is_today'] = this.isToday;
    if (this.cards != null) {
      data['cards'] = this.cards.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BadgeInfo {
  String bgColor;
  String bgColorNight;
  String text;

  BadgeInfo({this.bgColor, this.bgColorNight, this.text});

  BadgeInfo.fromJson(Map<String, dynamic> json) {
    bgColor = json['bg_color'];
    bgColorNight = json['bg_color_night'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bg_color'] = this.bgColor;
    data['bg_color_night'] = this.bgColorNight;
    data['text'] = this.text;
    return data;
  }
}

class Report {
  String cardType;
  String itemId;
  String moduleId;
  String moduleType;
  String oid;
  String seasonType;

  Report({this.cardType, this.itemId, this.moduleId, this.moduleType, this.oid, this.seasonType});

  Report.fromJson(Map<String, dynamic> json) {
    cardType = json['card_type'];
    itemId = json['item_id'];
    moduleId = json['module_id'];
    moduleType = json['module_type'];
    oid = json['oid'];
    seasonType = json['season_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_type'] = this.cardType;
    data['item_id'] = this.itemId;
    data['module_id'] = this.moduleId;
    data['module_type'] = this.moduleType;
    data['oid'] = this.oid;
    data['season_type'] = this.seasonType;
    return data;
  }
}

class SourceContent {
  int cardIndex;
  String clientIp;
  int index;
  int isAdLoc;
  String requestId;
  int resourceId;
  int serverType;
  int sourceId;
  AdContent adContent;

  SourceContent({this.cardIndex, this.clientIp, this.index, this.isAdLoc, this.requestId, this.resourceId, this.serverType, this.sourceId, this.adContent});

  SourceContent.fromJson(Map<String, dynamic> json) {
    cardIndex = json['card_index'];
    clientIp = json['client_ip'];
    index = json['index'];
    isAdLoc = json['is_ad_loc'];
    requestId = json['request_id'];
    resourceId = json['resource_id'];
    serverType = json['server_type'];
    sourceId = json['source_id'];
    adContent = json['ad_content'] != null ? new AdContent.fromJson(json['ad_content']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_index'] = this.cardIndex;
    data['client_ip'] = this.clientIp;
    data['index'] = this.index;
    data['is_ad_loc'] = this.isAdLoc;
    data['request_id'] = this.requestId;
    data['resource_id'] = this.resourceId;
    data['server_type'] = this.serverType;
    data['source_id'] = this.sourceId;
    if (this.adContent != null) {
      data['ad_content'] = this.adContent.toJson();
    }
    return data;
  }
}

class AdContent {
  String adCb;
  int cmMark;
  int creativeId;
  Extra extra;
  bool isAd;

  AdContent({this.adCb, this.cmMark, this.creativeId, this.extra, this.isAd});

  AdContent.fromJson(Map<String, dynamic> json) {
    adCb = json['ad_cb'];
    cmMark = json['cm_mark'];
    creativeId = json['creative_id'];
    extra = json['extra'] != null ? new Extra.fromJson(json['extra']) : null;
    isAd = json['is_ad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ad_cb'] = this.adCb;
    data['cm_mark'] = this.cmMark;
    data['creative_id'] = this.creativeId;
    if (this.extra != null) {
      data['extra'] = this.extra.toJson();
    }
    data['is_ad'] = this.isAd;
    return data;
  }
}

class Extra {
  int salesType;
  bool useAdWebV2;
  int upzoneEntranceReportId;
  int clickArea;
  bool specialIndustry;
  int appstorePriority;
  int upzoneEntranceType;
  int reportTime;
  int preloadLandingpage;
  String specialIndustryTips;
  BangumiCard card;

  Extra({this.salesType, this.useAdWebV2, this.upzoneEntranceReportId, this.clickArea, this.specialIndustry, this.appstorePriority, this.upzoneEntranceType, this.reportTime, this.preloadLandingpage, this.specialIndustryTips, this.card});

  Extra.fromJson(Map<String, dynamic> json) {
    salesType = json['sales_type'];
    useAdWebV2 = json['use_ad_web_v2'];

    upzoneEntranceReportId = json['upzone_entrance_report_id'];
    clickArea = json['click_area'];
    specialIndustry = json['special_industry'];
    appstorePriority = json['appstore_priority'];
    upzoneEntranceType = json['upzone_entrance_type'];
    reportTime = json['report_time'];
    preloadLandingpage = json['preload_landingpage'];

    specialIndustryTips = json['special_industry_tips'];

    card = json['card'] != null ? new BangumiCard.fromJson(json['card']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sales_type'] = this.salesType;

    data['use_ad_web_v2'] = this.useAdWebV2;

    data['upzone_entrance_report_id'] = this.upzoneEntranceReportId;
    data['click_area'] = this.clickArea;
    data['special_industry'] = this.specialIndustry;
    data['appstore_priority'] = this.appstorePriority;
    data['upzone_entrance_type'] = this.upzoneEntranceType;
    data['report_time'] = this.reportTime;
    data['preload_landingpage'] = this.preloadLandingpage;

    data['special_industry_tips'] = this.specialIndustryTips;

    if (this.card != null) {
      data['card'] = this.card.toJson();
    }
    return data;
  }
}

class BangumiCard {
  FeedbackPanel feedbackPanel;
  String jumpUrl;
  AdTagStyle adTagStyle;
  int foldTime;
  String adTag;
  String callupUrl;
  int cardType;
  String title;
  String extraDesc;
  List<Covers> covers;
  String desc;
  String longDesc;

  BangumiCard({this.feedbackPanel, this.jumpUrl, this.adTagStyle, this.foldTime, this.adTag, this.callupUrl, this.cardType, this.title, this.extraDesc, this.covers, this.desc, this.longDesc});

  BangumiCard.fromJson(Map<String, dynamic> json) {
    feedbackPanel = json['feedback_panel'] != null ? new FeedbackPanel.fromJson(json['feedback_panel']) : null;
    jumpUrl = json['jump_url'];
    adTagStyle = json['ad_tag_style'] != null ? new AdTagStyle.fromJson(json['ad_tag_style']) : null;
    foldTime = json['fold_time'];
    adTag = json['ad_tag'];
    callupUrl = json['callup_url'];
    cardType = json['card_type'];
    title = json['title'];
    extraDesc = json['extra_desc'];
    if (json['covers'] != null) {
      covers = new List<Covers>();
      json['covers'].forEach((v) { covers.add(new Covers.fromJson(v)); });
    }
    desc = json['desc'];
    longDesc = json['long_desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.feedbackPanel != null) {
      data['feedback_panel'] = this.feedbackPanel.toJson();
    }
    data['jump_url'] = this.jumpUrl;
    if (this.adTagStyle != null) {
      data['ad_tag_style'] = this.adTagStyle.toJson();
    }
    data['fold_time'] = this.foldTime;
    data['ad_tag'] = this.adTag;
    data['callup_url'] = this.callupUrl;
    data['card_type'] = this.cardType;
    data['title'] = this.title;
    data['extra_desc'] = this.extraDesc;
    if (this.covers != null) {
      data['covers'] = this.covers.map((v) => v.toJson()).toList();
    }
    data['desc'] = this.desc;
    data['long_desc'] = this.longDesc;
    return data;
  }
}

class FeedbackPanel {
  String panelTypeText;

  FeedbackPanel({this.panelTypeText});

  FeedbackPanel.fromJson(Map<String, dynamic> json) {
    panelTypeText = json['panel_type_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['panel_type_text'] = this.panelTypeText;
    return data;
  }
}

class AdTagStyle {
  String bgColor;
  int imgWidth;
  String imgUrl;
  int imgHeight;
  String text;
  String textColor;
  String borderColor;
  int type;
  String bgBorderColor;

  AdTagStyle({this.bgColor, this.imgWidth, this.imgUrl, this.imgHeight, this.text, this.textColor, this.borderColor, this.type, this.bgBorderColor});

  AdTagStyle.fromJson(Map<String, dynamic> json) {
    bgColor = json['bg_color'];
    imgWidth = json['img_width'];
    imgUrl = json['img_url'];
    imgHeight = json['img_height'];
    text = json['text'];
    textColor = json['text_color'];
    borderColor = json['border_color'];
    type = json['type'];
    bgBorderColor = json['bg_border_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bg_color'] = this.bgColor;
    data['img_width'] = this.imgWidth;
    data['img_url'] = this.imgUrl;
    data['img_height'] = this.imgHeight;
    data['text'] = this.text;
    data['text_color'] = this.textColor;
    data['border_color'] = this.borderColor;
    data['type'] = this.type;
    data['bg_border_color'] = this.bgBorderColor;
    return data;
  }
}

class Covers {
  int imageHeight;
  int loop;
  int imageWidth;
  String url;

  Covers({this.imageHeight, this.loop, this.imageWidth, this.url});

  Covers.fromJson(Map<String, dynamic> json) {
    imageHeight = json['image_height'];
    loop = json['loop'];
    imageWidth = json['image_width'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_height'] = this.imageHeight;
    data['loop'] = this.loop;
    data['image_width'] = this.imageWidth;
    data['url'] = this.url;
    return data;
  }
}

class Stat {
  int danmaku;
  int follow;
  String followView;
  int view;

  Stat({this.danmaku, this.follow, this.followView, this.view});

  Stat.fromJson(Map<String, dynamic> json) {
    danmaku = json['danmaku'];
    follow = json['follow'];
    followView = json['follow_view'];
    view = json['view'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['danmaku'] = this.danmaku;
    data['follow'] = this.follow;
    data['follow_view'] = this.followView;
    data['view'] = this.view;
    return data;
  }
}

class Episodes {
  String cover;
  int delay;
  int delayId;
  String delayIndex;
  String delayReason;
  int episodeId;
  String link;
  String pubIndex;
  String pubTime;
  int pubTs;
  int published;
  int seasonId;
  int seasonType;
  String squareCover;
  String title;

  Episodes({this.cover, this.delay, this.delayId, this.delayIndex, this.delayReason, this.episodeId, this.link, this.pubIndex, this.pubTime, this.pubTs, this.published, this.seasonId, this.seasonType, this.squareCover, this.title});

  Episodes.fromJson(Map<String, dynamic> json) {
    cover = json['cover'];
    delay = json['delay'];
    delayId = json['delay_id'];
    delayIndex = json['delay_index'];
    delayReason = json['delay_reason'];
    episodeId = json['episode_id'];
    link = json['link'];
    pubIndex = json['pub_index'];
    pubTime = json['pub_time'];
    pubTs = json['pub_ts'];
    published = json['published'];
    seasonId = json['season_id'];
    seasonType = json['season_type'];
    squareCover = json['square_cover'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cover'] = this.cover;
    data['delay'] = this.delay;
    data['delay_id'] = this.delayId;
    data['delay_index'] = this.delayIndex;
    data['delay_reason'] = this.delayReason;
    data['episode_id'] = this.episodeId;
    data['link'] = this.link;
    data['pub_index'] = this.pubIndex;
    data['pub_time'] = this.pubTime;
    data['pub_ts'] = this.pubTs;
    data['published'] = this.published;
    data['season_id'] = this.seasonId;
    data['season_type'] = this.seasonType;
    data['square_cover'] = this.squareCover;
    data['title'] = this.title;
    return data;
  }
}

class Cards {
  String badge;
  BadgeInfo badgeInfo;
  int badgeType;
  int canWatch;
  String cover;
  String link;
  int oid;
  String pts;
  int seasonType;
  String title;
  String type;

  Cards({this.badge, this.badgeInfo, this.badgeType, this.canWatch, this.cover, this.link, this.oid, this.pts, this.seasonType, this.title, this.type});

  Cards.fromJson(Map<String, dynamic> json) {
    badge = json['badge'];
    badgeInfo = json['badge_info'] != null ? new BadgeInfo.fromJson(json['badge_info']) : null;
    badgeType = json['badge_type'];
    canWatch = json['can_watch'];
    cover = json['cover'];
    link = json['link'];
    oid = json['oid'];
    pts = json['pts'];
    seasonType = json['season_type'];
    title = json['title'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['badge'] = this.badge;
    if (this.badgeInfo != null) {
      data['badge_info'] = this.badgeInfo.toJson();
    }
    data['badge_type'] = this.badgeType;
    data['can_watch'] = this.canWatch;
    data['cover'] = this.cover;
    data['link'] = this.link;
    data['oid'] = this.oid;
    data['pts'] = this.pts;
    data['season_type'] = this.seasonType;
    data['title'] = this.title;
    data['type'] = this.type;
    return data;
  }
}

class Regions {
  String icon;
  Report report;
  String title;
  String url;

  Regions({this.icon, this.report, this.title, this.url});

  Regions.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    report = json['report'] != null ? new Report.fromJson(json['report']) : null;
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    if (this.report != null) {
      data['report'] = this.report.toJson();
    }
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

