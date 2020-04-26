class HomeLiveInfoModel {
  int code;
  String message;
  int ttl;
  HomeLiveModel data;

  HomeLiveInfoModel({this.code, this.message, this.ttl, this.data});

  HomeLiveInfoModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    ttl = json['ttl'];
    data = json['data'] != null ? new HomeLiveModel.fromJson(json['data']) : null;
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

class HomeLiveModel {
  int interval;
  int isSkyHorseGray;
  List<LiveBanner> banner;
  List<Room> roomList;
  List<HourRank> hourRank;
  List<AreaEntranceV2> areaEntranceV2;
  List<ActivityCardV2> activityCardV2;

  HomeLiveModel(
      {this.interval,
        this.isSkyHorseGray,
        this.banner,
        this.roomList,
        this.hourRank,
        this.areaEntranceV2,
        this.activityCardV2
      });

  HomeLiveModel.fromJson(Map<String, dynamic> json) {
    interval = json['interval'];
    isSkyHorseGray = json['is_sky_horse_gray'];
    if (json['banner'] != null) {
      banner = new List<LiveBanner>();
      json['banner'].forEach((v) {
        banner.add(new LiveBanner.fromJson(v));
      });
    }
    if (json['room_list'] != null) {
      roomList = new List<Room>();
      json['room_list'].forEach((v) {
        roomList.add(new Room.fromJson(v));
      });
    }
    if (json['hour_rank'] != null) {
      hourRank = new List<HourRank>();
      json['hour_rank'].forEach((v) {
        hourRank.add(new HourRank.fromJson(v));
      });
    }
    if (json['area_entrance_v2'] != null) {
      areaEntranceV2 = new List<AreaEntranceV2>();
      json['area_entrance_v2'].forEach((v) {
        areaEntranceV2.add(new AreaEntranceV2.fromJson(v));
      });
    }
    if (json['activity_card_v2'] != null) {
      activityCardV2 = new List<ActivityCardV2>();
      json['activity_card_v2'].forEach((v) {
        activityCardV2.add(new ActivityCardV2.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['interval'] = this.interval;
    data['is_sky_horse_gray'] = this.isSkyHorseGray;
    if (this.banner != null) {
      data['banner'] = this.banner.map((v) => v.toJson()).toList();
    }
    if (this.roomList != null) {
      data['room_list'] = this.roomList.map((v) => v.toJson()).toList();
    }
    if (this.hourRank != null) {
      data['hour_rank'] = this.hourRank.map((v) => v.toJson()).toList();
    }
    if (this.areaEntranceV2 != null) {
      data['area_entrance_v2'] =
          this.areaEntranceV2.map((v) => v.toJson()).toList();
    }
//    if (this.activityCardV2 != null) {
//      data['activity_card_v2'] =
//          this.activityCardV2.map((v) => v.toJson()).toList();
//    }
    return data;
  }
}

class LiveBanner {
  BannerModuleInfo moduleInfo;
  List<BannerList> list;

  LiveBanner({this.moduleInfo, this.list});

  LiveBanner.fromJson(Map<String, dynamic> json) {
    moduleInfo = json['module_info'] != null
        ? new BannerModuleInfo.fromJson(json['module_info'])
        : null;
    if (json['list'] != null) {
      list = new List<BannerList>();
      json['list'].forEach((v) {
        list.add(new BannerList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.moduleInfo != null) {
      data['module_info'] = this.moduleInfo.toJson();
    }
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BannerModuleInfo {
  int id;
  String link;
  String pic;
  String title;
  int type;
  int sort;
  int count;

  BannerModuleInfo(
      {this.id,
        this.link,
        this.pic,
        this.title,
        this.type,
        this.sort,
        this.count});

  BannerModuleInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    pic = json['pic'];
    title = json['title'];
    type = json['type'];
    sort = json['sort'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['type'] = this.type;
    data['sort'] = this.sort;
    data['count'] = this.count;
    return data;
  }
}

class BannerList {
  int id;
  String link;
  String pic;
  String title;
  String content;
  BannerSourceContent sourceContent;

  BannerList(
      {this.id,
        this.link,
        this.pic,
        this.title,
        this.content,
        this.sourceContent});

  BannerList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    pic = json['pic'];
    title = json['title'];
    content = json['content'];
    sourceContent = json['source_content'] != null
        ? new BannerSourceContent.fromJson(json['source_content'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['content'] = this.content;
    if (this.sourceContent != null) {
      data['source_content'] = this.sourceContent.toJson();
    }
    return data;
  }
}

class BannerSourceContent {
  String requestId;
  int sourceId;
  int resourceId;
  bool isAdLoc;
  int serverType;
  String clientIp;
  int cardIndex;
  int index;

  BannerSourceContent(
      {this.requestId,
        this.sourceId,
        this.resourceId,
        this.isAdLoc,
        this.serverType,
        this.clientIp,
        this.cardIndex,
        this.index});

  BannerSourceContent.fromJson(Map<String, dynamic> json) {
    requestId = json['request_id'];
    sourceId = json['source_id'];
    resourceId = json['resource_id'];
    isAdLoc = json['is_ad_loc'];
    serverType = json['server_type'];
    clientIp = json['client_ip'];
    cardIndex = json['card_index'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_id'] = this.requestId;
    data['source_id'] = this.sourceId;
    data['resource_id'] = this.resourceId;
    data['is_ad_loc'] = this.isAdLoc;
    data['server_type'] = this.serverType;
    data['client_ip'] = this.clientIp;
    data['card_index'] = this.cardIndex;
    data['index'] = this.index;
    return data;
  }
}

class Room {
  List<RoomList> list;
  Room(
      {this.list,});

  Room.fromJson(Map<String, dynamic> json) {

    if (json['list'] != null) {
      list = new List<RoomList>();
      json['list'].forEach((v) {
        list.add(new RoomList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoomList {
  List<int> acceptQuality;
  int areaV2Id;
  int areaV2ParentId;
  String areaV2Name;
  String areaV2ParentName;
  int broadcastType;
  String cover;
  int currentQuality;
  String face;
  String link;
  int online;
  String pendentRu;
  String pendentRuColor;
  String pendentRuPic;
  int pkId;
  String playUrl;
  int recType;
  int roomid;
  String title;
  String uname;
  String playUrlH265;
  String sessionId;
  int groupId;
  String showCallback;
  String clickCallback;
  int currentQn;
  List<QualityDescription> qualityDescription;
  String playUrlCard;
  int uid;
  int flag;
  List<PendentList> pendentList;

  RoomList(
      {this.acceptQuality,
        this.areaV2Id,
        this.areaV2ParentId,
        this.areaV2Name,
        this.areaV2ParentName,
        this.broadcastType,
        this.cover,
        this.currentQuality,
        this.face,
        this.link,
        this.online,
        this.pendentRu,
        this.pendentRuColor,
        this.pendentRuPic,
        this.pkId,
        this.playUrl,
        this.recType,
        this.roomid,
        this.title,
        this.uname,
        this.playUrlH265,
        this.sessionId,
        this.groupId,
        this.showCallback,
        this.clickCallback,
        this.currentQn,
        this.qualityDescription,
        this.playUrlCard,
        this.uid,
        this.flag,
        this.pendentList});

  RoomList.fromJson(Map<String, dynamic> json) {
    acceptQuality = json['accept_quality'].cast<int>();
    areaV2Id = json['area_v2_id'];
    areaV2ParentId = json['area_v2_parent_id'];
    areaV2Name = json['area_v2_name'];
    areaV2ParentName = json['area_v2_parent_name'];
    broadcastType = json['broadcast_type'];
    cover = json['cover'];
    currentQuality = json['current_quality'];
    face = json['face'];
    link = json['link'];
    online = json['online'];
    pendentRu = json['pendent_ru'];
    pendentRuColor = json['pendent_ru_color'];
    pendentRuPic = json['pendent_ru_pic'];
    pkId = json['pk_id'];
    playUrl = json['play_url'];
    recType = json['rec_type'];
    roomid = json['roomid'];
    title = json['title'];
    uname = json['uname'];
    playUrlH265 = json['play_url_h265'];
    sessionId = json['session_id'];
    groupId = json['group_id'];
    showCallback = json['show_callback'];
    clickCallback = json['click_callback'];
    currentQn = json['current_qn'];
    if (json['quality_description'] != null) {
      qualityDescription = new List<QualityDescription>();
      json['quality_description'].forEach((v) {
        qualityDescription.add(new QualityDescription.fromJson(v));
      });
    }
    playUrlCard = json['play_url_card'];
    uid = json['uid'];
    flag = json['flag'];
    if (json['pendent_list'] != null) {
      pendentList = new List<PendentList>();
      json['pendent_list'].forEach((v) {
        pendentList.add(new PendentList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accept_quality'] = this.acceptQuality;
    data['area_v2_id'] = this.areaV2Id;
    data['area_v2_parent_id'] = this.areaV2ParentId;
    data['area_v2_name'] = this.areaV2Name;
    data['area_v2_parent_name'] = this.areaV2ParentName;
    data['broadcast_type'] = this.broadcastType;
    data['cover'] = this.cover;
    data['current_quality'] = this.currentQuality;
    data['face'] = this.face;
    data['link'] = this.link;
    data['online'] = this.online;
    data['pendent_ru'] = this.pendentRu;
    data['pendent_ru_color'] = this.pendentRuColor;
    data['pendent_ru_pic'] = this.pendentRuPic;
    data['pk_id'] = this.pkId;
    data['play_url'] = this.playUrl;
    data['rec_type'] = this.recType;
    data['roomid'] = this.roomid;
    data['title'] = this.title;
    data['uname'] = this.uname;
    data['play_url_h265'] = this.playUrlH265;
    data['session_id'] = this.sessionId;
    data['group_id'] = this.groupId;
    data['show_callback'] = this.showCallback;
    data['click_callback'] = this.clickCallback;
    data['current_qn'] = this.currentQn;
    if (this.qualityDescription != null) {
      data['quality_description'] =
          this.qualityDescription.map((v) => v.toJson()).toList();
    }
    data['play_url_card'] = this.playUrlCard;
    data['uid'] = this.uid;
    data['flag'] = this.flag;
    if (this.pendentList != null) {
      data['pendent_list'] = this.pendentList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QualityDescription {
  int qn;
  String desc;

  QualityDescription({this.qn, this.desc});

  QualityDescription.fromJson(Map<String, dynamic> json) {
    qn = json['qn'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['qn'] = this.qn;
    data['desc'] = this.desc;
    return data;
  }
}

class PendentList {
  String content;
  int position;
  String color;
  String pic;

  PendentList({this.content, this.position, this.color, this.pic});

  PendentList.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    position = json['position'];
    color = json['color'];
    pic = json['pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['position'] = this.position;
    data['color'] = this.color;
    data['pic'] = this.pic;
    return data;
  }
}

class HourRank {
  HourRankModuleInfo moduleInfo;
  HourRankExtraInfo extraInfo;
  List<HourRankList> list;

  HourRank({this.moduleInfo, this.extraInfo, this.list});

  HourRank.fromJson(Map<String, dynamic> json) {
    moduleInfo = json['module_info'] != null
        ? new HourRankModuleInfo.fromJson(json['module_info'])
        : null;
    extraInfo = json['extra_info'] != null
        ? new HourRankExtraInfo.fromJson(json['extra_info'])
        : null;
    if (json['list'] != null) {
      list = new List<HourRankList>();
      json['list'].forEach((v) {
        list.add(new HourRankList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.moduleInfo != null) {
      data['module_info'] = this.moduleInfo.toJson();
    }
    if (this.extraInfo != null) {
      data['extra_info'] = this.extraInfo.toJson();
    }
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HourRankExtraInfo {
  String subTitle;

  HourRankExtraInfo({this.subTitle});

  HourRankExtraInfo.fromJson(Map<String, dynamic> json) {
    subTitle = json['sub_title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_title'] = this.subTitle;
    return data;
  }
}

class HourRankModuleInfo {
  int id;
  String link;
  String pic;
  String title;
  int type;
  int sort;
  int count;

  HourRankModuleInfo(
      {this.id,
        this.link,
        this.pic,
        this.title,
        this.type,
        this.sort,
        this.count,
      });

  HourRankModuleInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    pic = json['pic'];
    title = json['title'];
    type = json['type'];
    sort = json['sort'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['type'] = this.type;
    data['sort'] = this.sort;
    data['count'] = this.count;
    return data;
  }
}

class HourRankList {
  int rank;
  int uid;
  int roomid;
  String uname;
  String face;
  int liveStatus;
  int areaV2ParentId;
  String areaV2ParentName;
  int areaV2Id;
  String areaV2Name;

  HourRankList(
      {this.rank,
        this.uid,
        this.roomid,
        this.uname,
        this.face,
        this.liveStatus,
        this.areaV2ParentId,
        this.areaV2ParentName,
        this.areaV2Id,
        this.areaV2Name});

  HourRankList.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
    uid = json['uid'];
    roomid = json['roomid'];
    uname = json['uname'];
    face = json['face'];
    liveStatus = json['live_status'];
    areaV2ParentId = json['area_v2_parent_id'];
    areaV2ParentName = json['area_v2_parent_name'];
    areaV2Id = json['area_v2_id'];
    areaV2Name = json['area_v2_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rank'] = this.rank;
    data['uid'] = this.uid;
    data['roomid'] = this.roomid;
    data['uname'] = this.uname;
    data['face'] = this.face;
    data['live_status'] = this.liveStatus;
    data['area_v2_parent_id'] = this.areaV2ParentId;
    data['area_v2_parent_name'] = this.areaV2ParentName;
    data['area_v2_id'] = this.areaV2Id;
    data['area_v2_name'] = this.areaV2Name;
    return data;
  }
}

class AreaEntranceV2 {
  List<AreaEntranceV2List> list;
  AreaEntranceV2(
      {this.list,});

  AreaEntranceV2.fromJson(Map<String, dynamic> json) {

    if (json['list'] != null) {
      list = new List<AreaEntranceV2List>();
      json['list'].forEach((v) {
        list.add(new AreaEntranceV2List.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AreaEntranceV2List {
  int id;
  String link;
  String pic;
  String title;
  int areaV2Id;
  int areaV2ParentId;
  int tagType;

  AreaEntranceV2List(
      {this.id,
        this.link,
        this.pic,
        this.title,
        this.areaV2Id,
        this.areaV2ParentId,
        this.tagType});

  AreaEntranceV2List.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    pic = json['pic'];
    title = json['title'];
    areaV2Id = json['area_v2_id'];
    areaV2ParentId = json['area_v2_parent_id'];
    tagType = json['tag_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    data['pic'] = this.pic;
    data['title'] = this.title;
    data['area_v2_id'] = this.areaV2Id;
    data['area_v2_parent_id'] = this.areaV2ParentId;
    data['tag_type'] = this.tagType;
    return data;
  }
}

class ActivityCardV2 {
  List<ActivityCardV2List> list;
  ActivityCardV2(
      {this.list,});

  ActivityCardV2.fromJson(Map<String, dynamic> json) {

    if (json['list'] != null) {
      list = new List<ActivityCardV2List>();
      json['list'].forEach((v) {
        list.add(new ActivityCardV2List.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ActivityCardV2List {
  int aid;
  int type;
  String title;
  String logoUrl;
  int startAt;
  int endAt;
  String timeText;
  String buttonUrl;
  String buttonText;
  String activityUrl;
  int status;
  int onLive;

  ActivityCardV2List(
      {this.aid,
        this.type,
        this.title,
        this.logoUrl,
        this.startAt,
        this.endAt,
        this.timeText,
        this.buttonUrl,
        this.buttonText,
        this.activityUrl,
        this.status,
        this.onLive});

  ActivityCardV2List.fromJson(Map<String, dynamic> json) {
    aid = json['aid'];
    type = json['type'];
    title = json['title'];
    logoUrl = json['logo_url'];
    startAt = json['start_at'];
    endAt = json['end_at'];
    timeText = json['time_text'];
    buttonUrl = json['button_url'];
    buttonText = json['button_text'];
    activityUrl = json['activity_url'];
    status = json['status'];
    onLive = json['on_live'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aid'] = this.aid;
    data['type'] = this.type;
    data['title'] = this.title;
    data['logo_url'] = this.logoUrl;
    data['start_at'] = this.startAt;
    data['end_at'] = this.endAt;
    data['time_text'] = this.timeText;
    data['button_url'] = this.buttonUrl;
    data['button_text'] = this.buttonText;
    data['activity_url'] = this.activityUrl;
    data['status'] = this.status;
    data['on_live'] = this.onLive;
    return data;
  }
}

