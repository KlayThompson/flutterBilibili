import 'dart:convert';

import 'package:flutter_bili/model/common_model.dart';

class TimeLineData {
  int code;
  String msg;
  String message;
  TimeLineDataListModel data;

  TimeLineData({this.code, this.msg, this.message, this.data});

  TimeLineData.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    msg = json['msg'];
    message = json['message'];
    data = json['data'] != null ? new TimeLineDataListModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['msg'] = this.msg;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class TimeLineDataListModel {
  List<TimeLineDataModel> cards;
  int hasMore;
  String mixLightTypes;
  int iGt;

  TimeLineDataListModel({this.cards, this.hasMore, this.mixLightTypes, this.iGt});

  TimeLineDataListModel.fromJson(Map<String, dynamic> json) {
    if (json['cards'] != null) {
      cards = new List<TimeLineDataModel>();
      json['cards'].forEach((v) {
        cards.add(new TimeLineDataModel.fromJson(v));
      });
    }
    hasMore = json['has_more'];
    mixLightTypes = json['mix_light_types'];
    iGt = json['_gt_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cards != null) {
      data['cards'] = this.cards.map((v) => v.toJson()).toList();
    }
    data['has_more'] = this.hasMore;
    data['mix_light_types'] = this.mixLightTypes;
    data['_gt_'] = this.iGt;
    return data;
  }
}

class TimeLineDataModel {
  TimeLineDescModel desc;
  TimeLineDetailCard card;
  String extendJson;
  TimeLineDisplay display;
  TimeLineExtension extension;

  TimeLineDataModel({this.desc, this.card, this.extendJson, this.display, this.extension});

  TimeLineDataModel.fromJson(Map<String, dynamic> json) {
    desc = json['desc'] != null ? new TimeLineDescModel.fromJson(json['desc']) : null;
//    const cardJson = jsonDecode(json['card']);
    card = json['card'] != null ? new TimeLineDetailCard.fromJson(jsonDecode(json['card'])) : null;
    extendJson = json['extend_json'];
    display =
    json['display'] != null ? new TimeLineDisplay.fromJson(json['display']) : null;
    extension = json['extension'] != null
        ? new TimeLineExtension.fromJson(json['extension'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.desc != null) {
      data['desc'] = this.desc.toJson();
    }
    if (this.card != null) {
      data['card'] = jsonEncode(this.card.toJson());
    }
    data['card'] = this.card;
    data['extend_json'] = this.extendJson;
    if (this.display != null) {
      data['display'] = this.display.toJson();
    }
    if (this.extension != null) {
      data['extension'] = this.extension.toJson();
    }
    return data;
  }
}

class TimeLineDescModel {
  int uid;
  int type;
  int rid;
  int acl;
  int view;
  int repost;
  int like;
  int isLiked;
  int dynamicId;
  int timestamp;
  int preDyId;
  int origDyId;
  int origType;
  UserProfile userProfile;
  int specType;
  int uidType;
  int stype;
  int rType;
  int innerId;
  int status;
  String dynamicIdStr;
  String preDyIdStr;
  String origDyIdStr;
  String ridStr;

  TimeLineDescModel(
      {this.uid,
        this.type,
        this.rid,
        this.acl,
        this.view,
        this.repost,
        this.like,
        this.isLiked,
        this.dynamicId,
        this.timestamp,
        this.preDyId,
        this.origDyId,
        this.origType,
        this.userProfile,
        this.specType,
        this.uidType,
        this.stype,
        this.rType,
        this.innerId,
        this.status,
        this.dynamicIdStr,
        this.preDyIdStr,
        this.origDyIdStr,
        this.ridStr});

  TimeLineDescModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    type = json['type'];
    rid = json['rid'];
    acl = json['acl'];
    view = json['view'];
    repost = json['repost'];
    like = json['like'];
    isLiked = json['is_liked'];
    dynamicId = json['dynamic_id'];
    timestamp = json['timestamp'];
    preDyId = json['pre_dy_id'];
    origDyId = json['orig_dy_id'];
    origType = json['orig_type'];
    userProfile = json['user_profile'] != null
        ? new UserProfile.fromJson(json['user_profile'])
        : null;
    specType = json['spec_type'];
    uidType = json['uid_type'];
    stype = json['stype'];
    rType = json['r_type'];
    innerId = json['inner_id'];
    status = json['status'];
    dynamicIdStr = json['dynamic_id_str'];
    preDyIdStr = json['pre_dy_id_str'];
    origDyIdStr = json['orig_dy_id_str'];
    ridStr = json['rid_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['type'] = this.type;
    data['rid'] = this.rid;
    data['acl'] = this.acl;
    data['view'] = this.view;
    data['repost'] = this.repost;
    data['like'] = this.like;
    data['is_liked'] = this.isLiked;
    data['dynamic_id'] = this.dynamicId;
    data['timestamp'] = this.timestamp;
    data['pre_dy_id'] = this.preDyId;
    data['orig_dy_id'] = this.origDyId;
    data['orig_type'] = this.origType;
    if (this.userProfile != null) {
      data['user_profile'] = this.userProfile.toJson();
    }
    data['spec_type'] = this.specType;
    data['uid_type'] = this.uidType;
    data['stype'] = this.stype;
    data['r_type'] = this.rType;
    data['inner_id'] = this.innerId;
    data['status'] = this.status;
    data['dynamic_id_str'] = this.dynamicIdStr;
    data['pre_dy_id_str'] = this.preDyIdStr;
    data['orig_dy_id_str'] = this.origDyIdStr;
    data['rid_str'] = this.ridStr;
    return data;
  }
}

class UserProfile {
  AuthorInfo info;
  UserCard card;
  VipModel vip;
  Pendant pendant;
  String rank;
  String sign;
  LevelInfo levelInfo;
  DecorateCard decorateCard;

  UserProfile(
      {this.info,
        this.card,
        this.vip,
        this.pendant,
        this.rank,
        this.sign,
        this.levelInfo,
        this.decorateCard});

  UserProfile.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? new AuthorInfo.fromJson(json['info']) : null;
    card = json['card'] != null ? new UserCard.fromJson(json['card']) : null;
    vip = json['vip'] != null ? new VipModel.fromJson(json['vip']) : null;
    pendant =
    json['pendant'] != null ? new Pendant.fromJson(json['pendant']) : null;
    rank = json['rank'];
    sign = json['sign'];
    levelInfo = json['level_info'] != null
        ? new LevelInfo.fromJson(json['level_info'])
        : null;
    decorateCard = json['decorate_card'] != null
        ? new DecorateCard.fromJson(json['decorate_card'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.info != null) {
      data['info'] = this.info.toJson();
    }
    if (this.card != null) {
      data['card'] = this.card.toJson();
    }
    if (this.vip != null) {
      data['vip'] = this.vip.toJson();
    }
    if (this.pendant != null) {
      data['pendant'] = this.pendant.toJson();
    }
    data['rank'] = this.rank;
    data['sign'] = this.sign;
    if (this.levelInfo != null) {
      data['level_info'] = this.levelInfo.toJson();
    }
    if (this.decorateCard != null) {
      data['decorate_card'] = this.decorateCard.toJson();
    }
    return data;
  }
}

class AuthorInfo {
  int uid;
  String uname;
  String face;

  AuthorInfo({this.uid, this.uname, this.face});

  AuthorInfo.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    uname = json['uname'];
    face = json['face'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['uname'] = this.uname;
    data['face'] = this.face;
    return data;
  }
}

class UserCard {
  OfficialVerify officialVerify;

  UserCard({this.officialVerify});

  UserCard.fromJson(Map<String, dynamic> json) {
    officialVerify = json['official_verify'] != null
        ? new OfficialVerify.fromJson(json['official_verify'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.officialVerify != null) {
      data['official_verify'] = this.officialVerify.toJson();
    }
    return data;
  }
}

class OfficialVerify {
  int type;
  String desc;

  OfficialVerify({this.type, this.desc});

  OfficialVerify.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['desc'] = this.desc;
    return data;
  }
}

class VipModel {
  int vipType;
  int vipDueDate;
  String dueRemark;
  int accessStatus;
  int vipStatus;
  String vipStatusWarn;
  int themeType;
  VipModelLabel label;

  VipModel(
      {this.vipType,
        this.vipDueDate,
        this.dueRemark,
        this.accessStatus,
        this.vipStatus,
        this.vipStatusWarn,
        this.themeType,
        this.label});

  VipModel.fromJson(Map<String, dynamic> json) {
    vipType = json['vipType'];
    vipDueDate = json['vipDueDate'];
    dueRemark = json['dueRemark'];
    accessStatus = json['accessStatus'];
    vipStatus = json['vipStatus'];
    vipStatusWarn = json['vipStatusWarn'];
    themeType = json['themeType'];
    label = json['label'] != null ? new VipModelLabel.fromJson(json['label']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vipType'] = this.vipType;
    data['vipDueDate'] = this.vipDueDate;
    data['dueRemark'] = this.dueRemark;
    data['accessStatus'] = this.accessStatus;
    data['vipStatus'] = this.vipStatus;
    data['vipStatusWarn'] = this.vipStatusWarn;
    data['themeType'] = this.themeType;
    if (this.label != null) {
      data['label'] = this.label.toJson();
    }
    return data;
  }
}

class VipModelLabel {
  String path;

  VipModelLabel({this.path});

  VipModelLabel.fromJson(Map<String, dynamic> json) {
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    return data;
  }
}

class Pendant {
  int pid;
  String name;
  String image;
  int expire;
  String imageEnhance;

  Pendant({this.pid, this.name, this.image, this.expire, this.imageEnhance});

  Pendant.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    name = json['name'];
    image = json['image'];
    expire = json['expire'];
    imageEnhance = json['image_enhance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pid'] = this.pid;
    data['name'] = this.name;
    data['image'] = this.image;
    data['expire'] = this.expire;
    data['image_enhance'] = this.imageEnhance;
    return data;
  }
}

class LevelInfo {
  int currentLevel;
  int currentMin;
  int currentExp;
  String nextExp;

  LevelInfo(
      {this.currentLevel, this.currentMin, this.currentExp, this.nextExp});

  LevelInfo.fromJson(Map<String, dynamic> json) {
    currentLevel = json['current_level'];
    currentMin = json['current_min'];
    currentExp = json['current_exp'];
    nextExp = json['next_exp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_level'] = this.currentLevel;
    data['current_min'] = this.currentMin;
    data['current_exp'] = this.currentExp;
    data['next_exp'] = this.nextExp;
    return data;
  }
}

class DecorateCard {
  int mid;
  int id;
  int cardType;
  String name;
  int expireTime;
  String cardTypeName;
  int uid;
  int itemId;
  int itemType;
  String bigCardUrl;
  String jumpUrl;
  Fan fan;
  String imageEnhance;
  String cardUrl;

  DecorateCard(
      {this.mid,
        this.id,
        this.cardType,
        this.name,
        this.expireTime,
        this.cardTypeName,
        this.uid,
        this.itemId,
        this.itemType,
        this.bigCardUrl,
        this.jumpUrl,
        this.fan,
        this.imageEnhance,
        this.cardUrl});

  DecorateCard.fromJson(Map<String, dynamic> json) {
    mid = json['mid'];
    id = json['id'];
    cardType = json['card_type'];
    name = json['name'];
    expireTime = json['expire_time'];
    cardTypeName = json['card_type_name'];
    uid = json['uid'];
    itemId = json['item_id'];
    itemType = json['item_type'];
    bigCardUrl = json['big_card_url'];
    jumpUrl = json['jump_url'];
    fan = json['fan'] != null ? new Fan.fromJson(json['fan']) : null;
    imageEnhance = json['image_enhance'];
    cardUrl = json['card_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mid'] = this.mid;
    data['id'] = this.id;
    data['card_type'] = this.cardType;
    data['name'] = this.name;
    data['expire_time'] = this.expireTime;
    data['card_type_name'] = this.cardTypeName;
    data['uid'] = this.uid;
    data['item_id'] = this.itemId;
    data['item_type'] = this.itemType;
    data['big_card_url'] = this.bigCardUrl;
    data['jump_url'] = this.jumpUrl;
    if (this.fan != null) {
      data['fan'] = this.fan.toJson();
    }
    data['image_enhance'] = this.imageEnhance;
    data['card_url'] = this.cardUrl;
    return data;
  }
}

class Fan {
  int isFan;
  int number;
  String color;
  String numDesc;

  Fan({this.isFan, this.number, this.color, this.numDesc});

  Fan.fromJson(Map<String, dynamic> json) {
    isFan = json['is_fan'];
    number = json['number'];
    color = json['color'];
    numDesc = json['num_desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_fan'] = this.isFan;
    data['number'] = this.number;
    data['color'] = this.color;
    data['num_desc'] = this.numDesc;
    return data;
  }
}

class TimeLineDisplay {
  CommonRelationModel relation;
  EmojiInfo emojiInfo;

  TimeLineDisplay({this.relation, this.emojiInfo});

  TimeLineDisplay.fromJson(Map<String, dynamic> json) {
    relation = json['relation'] != null
        ? new CommonRelationModel.fromJson(json['relation'])
        : null;
    emojiInfo = json['emoji_info'] != null
        ? new EmojiInfo.fromJson(json['emoji_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.relation != null) {
      data['relation'] = this.relation.toJson();
    }
    if (this.emojiInfo != null) {
      data['emoji_info'] = this.emojiInfo.toJson();
    }
    return data;
  }
}

class EmojiInfo {
  List<EmojiDetails> emojiDetails;

  EmojiInfo({this.emojiDetails});

  EmojiInfo.fromJson(Map<String, dynamic> json) {
    if (json['emoji_details'] != null) {
      emojiDetails = new List<EmojiDetails>();
      json['emoji_details'].forEach((v) {
        emojiDetails.add(new EmojiDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.emojiDetails != null) {
      data['emoji_details'] = this.emojiDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EmojiDetails {
  String emojiName;
  int id;
  int packageId;
  int state;
  int type;
  int attr;
  String text;
  String url;
  Meta meta;
  int mtime;

  EmojiDetails(
      {this.emojiName,
        this.id,
        this.packageId,
        this.state,
        this.type,
        this.attr,
        this.text,
        this.url,
        this.meta,
        this.mtime});

  EmojiDetails.fromJson(Map<String, dynamic> json) {
    emojiName = json['emoji_name'];
    id = json['id'];
    packageId = json['package_id'];
    state = json['state'];
    type = json['type'];
    attr = json['attr'];
    text = json['text'];
    url = json['url'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    mtime = json['mtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emoji_name'] = this.emojiName;
    data['id'] = this.id;
    data['package_id'] = this.packageId;
    data['state'] = this.state;
    data['type'] = this.type;
    data['attr'] = this.attr;
    data['text'] = this.text;
    data['url'] = this.url;
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    data['mtime'] = this.mtime;
    return data;
  }
}

class Meta {
  int size;

  Meta({this.size});

  Meta.fromJson(Map<String, dynamic> json) {
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    return data;
  }
}

class TimeLineExtension {
  String lbs;

  TimeLineExtension({this.lbs});

  TimeLineExtension.fromJson(Map<String, dynamic> json) {
    lbs = json['lbs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lbs'] = this.lbs;
    return data;
  }
}

class TimeLineDetailCard {
  TimeLineDetailItem item;
  UserCard user;

  TimeLineDetailCard(
      {this.item,
        this.user,
 });

  TimeLineDetailCard.fromJson(Map<String, dynamic> json) {
    item = json['item'] != null ? new TimeLineDetailItem.fromJson(json['item']) : null;
    user = json['user'] != null ? new UserCard.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class TimeLineDetailItem {
  List<TimeLinePicture> pictures;
  String description;
  String title;
  int id;
  String category;
  int picturesCount;
  int uploadTime;
  int reply;
  int isFav;

  TimeLineDetailItem({this.pictures, this.description, this.title, this.id, this.category, this.picturesCount, this.uploadTime, this.reply, this.isFav,});

  TimeLineDetailItem.fromJson(Map<String, dynamic> json) {
    if (json['pictures'] != null) {
      pictures = new List<TimeLinePicture>();
      json['pictures'].forEach((v) {
        pictures.add(new TimeLinePicture.fromJson(v));
      });
    }
    description = json['description'];
    title = json['title'];
    id = json['id'];
    picturesCount = json['pictures_count'];
    category = json['category'];
    uploadTime = json['upload_time'];
    reply = json['reply'];
    isFav = json['is_fav'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pictures != null) {
      data['pictures'] = this.pictures.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['title'] = this.title;
    data['id'] = this.id;
    data['category'] = this.category;
    data['pictures_count'] = this.picturesCount;
    data['upload_time'] = this.uploadTime;
    data['reply'] = this.reply;
    data['is_fav'] = this.isFav;
    return data;
  }
}

class TimeLinePicture {
  String imgSrc;
  int imgWidth;
  int imgHeight;
  int imgSize;

  TimeLinePicture(
      {this.imgSrc,
        this.imgWidth,
        this.imgHeight,
        this.imgSize,
        });

  TimeLinePicture.fromJson(Map<String, dynamic> json) {
    imgSrc = json['img_src'];
    imgWidth = json['img_width'];
    imgHeight = json['img_height'];
    imgSize = json['img_size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img_src'] = this.imgSrc;
    data['img_width'] = this.imgWidth;
    data['img_height'] = this.imgHeight;
    data['img_size'] = this.imgSize;
    return data;
  }
}