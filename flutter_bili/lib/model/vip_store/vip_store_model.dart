class VipStoreDataModel {
  int code;
  String message;
  VipStoreData data;
  int errtag;

  VipStoreDataModel({this.code, this.message, this.data, this.errtag});

  VipStoreDataModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new VipStoreData.fromJson(json['data']) : null;
    errtag = json['errtag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['errtag'] = this.errtag;
    return data;
  }
}

class VipStoreData {
  int codeType;
  String codeMsg;
  VipStoreTotalTypeModel vo;

  VipStoreData({this.codeType, this.codeMsg, this.vo});

  VipStoreData.fromJson(Map<String, dynamic> json) {
    codeType = json['codeType'];
    codeMsg = json['codeMsg'];
    vo = json['vo'] != null ? new VipStoreTotalTypeModel.fromJson(json['vo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codeType'] = this.codeType;
    data['codeMsg'] = this.codeMsg;
    if (this.vo != null) {
      data['vo'] = this.vo.toJson();
    }
    return data;
  }
}

class VipStoreTotalTypeModel {
  List<MarketingList> marketingList;
  List<RightNavEntryItem> entryList;
  List<VipStoreFeedTabModel> feedTabs;
  List<VipStoreTopCard> cards;
  StoreFeeds feeds;

  VipStoreTotalTypeModel({ this.marketingList, this.entryList, this.feedTabs, this.cards, this.feeds});

  VipStoreTotalTypeModel.fromJson(Map<String, dynamic> json) {
    if (json['marketingList'] != null) {
      marketingList = new List<MarketingList>();
      json['marketingList'].forEach((v) { marketingList.add(new MarketingList.fromJson(v)); });
    }
    if (json['entryList'] != null) {
      entryList = new List<RightNavEntryItem>();
      json['entryList'].forEach((v) { entryList.add(new RightNavEntryItem.fromJson(v)); });
    }
    if (json['feedTabs'] != null) {
      feedTabs = new List<VipStoreFeedTabModel>();
      json['feedTabs'].forEach((v) { feedTabs.add(new VipStoreFeedTabModel.fromJson(v)); });
    }
    if (json['cards'] != null) {
      cards = new List<VipStoreTopCard>();
      json['cards'].forEach((v) { cards.add(new VipStoreTopCard.fromJson(v)); });
    }
    feeds = json['feeds'] != null ? new StoreFeeds.fromJson(json['feeds']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.marketingList != null) {
      data['marketingList'] = this.marketingList.map((v) => v.toJson()).toList();
    }
    if (this.entryList != null) {
      data['entryList'] = this.entryList.map((v) => v.toJson()).toList();
    }
    if (this.feedTabs != null) {
      data['feedTabs'] = this.feedTabs.map((v) => v.toJson()).toList();
    }
    if (this.cards != null) {
      data['cards'] = this.cards.map((v) => v.toJson()).toList();
    }
    if (this.feeds != null) {
      data['feeds'] = this.feeds.toJson();
    }
    return data;
  }
}

class MarketingList {
  int id;
  String name;
  String imageUrl;
  String jumpUrl;
  int interval;
  int targetUser;
  int type;
  int linkId;

  MarketingList({this.id, this.name, this.imageUrl, this.jumpUrl, this.interval, this.targetUser, this.type, this.linkId});

  MarketingList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    jumpUrl = json['jumpUrl'];
    interval = json['interval'];
    targetUser = json['targetUser'];
    type = json['type'];
    linkId = json['linkId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    data['jumpUrl'] = this.jumpUrl;
    data['interval'] = this.interval;
    data['targetUser'] = this.targetUser;
    data['type'] = this.type;
    data['linkId'] = this.linkId;
    return data;
  }
}

class RightNavEntryItem {
  String imgUrl;
  String jumpUrl;
  String title;

  RightNavEntryItem({this.imgUrl, this.jumpUrl, this.title});

  RightNavEntryItem.fromJson(Map<String, dynamic> json) {
    imgUrl = json['imgUrl'];
    jumpUrl = json['jumpUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgUrl'] = this.imgUrl;
    data['jumpUrl'] = this.jumpUrl;
    data['title'] = this.title;
    return data;
  }
}

class VipStoreFeedTabModel {
  int feedType;
  String title;
  String url;
  FeedLayout layout;

  VipStoreFeedTabModel({this.feedType, this.title, this.url, this.layout});

  VipStoreFeedTabModel.fromJson(Map<String, dynamic> json) {
    feedType = json['feedType'];
    title = json['title'];
    url = json['url'];
    layout = json['layout'] != null ? new FeedLayout.fromJson(json['layout']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feedType'] = this.feedType;
    data['title'] = this.title;
    data['url'] = this.url;
    if (this.layout != null) {
      data['layout'] = this.layout.toJson();
    }
    return data;
  }
}

class FeedLayout {
  String type;

  FeedLayout({this.type});

  FeedLayout.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}

class VipStoreTopCard {
  String type;
  List<StoreCardItem> items;

  VipStoreTopCard({this.type, this.items});

  VipStoreTopCard.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['items'] != null) {
      items = new List<StoreCardItem>();
      json['items'].forEach((v) { items.add(new StoreCardItem.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StoreCardItem {
  String type;
  StoreCardItemData data;

  StoreCardItem({this.type, this.data});

  StoreCardItem.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    data = json['data'] != null ? new StoreCardItemData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class StoreCardItemData {
  String title;
  List<String> titleList;
  String urlTicketSearch;
  String urlMallSearch;
  String urlMallAndTicketSearch;
  int isSearchV2;
  Null timestamp;
  String imageUrl;
  String nightImageUrl;
  String jumpUrl;
  String jumpUrlH5;
  String name;
  int index;
  List<CardDataListModel> list;

  StoreCardItemData({this.title, this.titleList, this.urlTicketSearch, this.urlMallSearch, this.urlMallAndTicketSearch, this.isSearchV2, this.timestamp, this.imageUrl, this.nightImageUrl, this.jumpUrl, this.jumpUrlH5, this.name, this.index, this.list});

  StoreCardItemData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['titleList'] != null) {
      titleList = json['titleList'].cast<String>();
    }
    urlTicketSearch = json['urlTicketSearch'];
    urlMallSearch = json['urlMallSearch'];
    urlMallAndTicketSearch = json['urlMallAndTicketSearch'];
    isSearchV2 = json['isSearchV2'];
    timestamp = json['timestamp'];
    imageUrl = json['imageUrl'];
    nightImageUrl = json['nightImageUrl'];
    jumpUrl = json['jumpUrl'];
    jumpUrlH5 = json['jumpUrlH5'];
    name = json['name'];
    index = json['index'];
    if (json['list'] != null) {
      list = new List<CardDataListModel>();
      json['list'].forEach((v) { list.add(new CardDataListModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['titleList'] = this.titleList;
    data['urlTicketSearch'] = this.urlTicketSearch;
    data['urlMallSearch'] = this.urlMallSearch;
    data['urlMallAndTicketSearch'] = this.urlMallAndTicketSearch;
    data['isSearchV2'] = this.isSearchV2;
    data['timestamp'] = this.timestamp;
    data['imageUrl'] = this.imageUrl;
    data['nightImageUrl'] = this.nightImageUrl;
    data['jumpUrl'] = this.jumpUrl;
    data['jumpUrlH5'] = this.jumpUrlH5;
    data['name'] = this.name;
    data['index'] = this.index;
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CardDataListModel {
  int hasWished;
  int bannerId;
  String name;
  String pic;
  String url;
  int targetUser;
  int adScene;
  int index;

  CardDataListModel({this.hasWished, this.bannerId, this.name, this.pic, this.url, this.targetUser, this.adScene, this.index});

  CardDataListModel.fromJson(Map<String, dynamic> json) {
    hasWished = json['hasWished'];
    bannerId = json['bannerId'];
    name = json['name'];
    pic = json['pic'];
    url = json['url'];
    targetUser = json['targetUser'];
    adScene = json['adScene'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasWished'] = this.hasWished;
    data['bannerId'] = this.bannerId;
    data['name'] = this.name;
    data['pic'] = this.pic;
    data['url'] = this.url;
    data['targetUser'] = this.targetUser;
    data['adScene'] = this.adScene;
    data['index'] = this.index;
    return data;
  }
}

class StoreFeeds {
  int feedType;
  List<FeedItemModel> items;

  StoreFeeds({this.feedType, this.items});

  StoreFeeds.fromJson(Map<String, dynamic> json) {
    feedType = json['feedType'];
    if (json['items'] != null) {
      items = new List<FeedItemModel>();
      json['items'].forEach((v) { items.add(new FeedItemModel.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feedType'] = this.feedType;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeedItemModel {
  String type;
  FeedItemModelData data;

  FeedItemModel({this.type, this.data});

  FeedItemModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    data = json['data'] != null ? new FeedItemModelData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class FeedItemModelData {
  String id;
  String type;
  String tagName;
  String title;
  int templateId;
  List<String> imageUrls;
  List<String> jumpUrls;
  String jumpUrlForNa;
  List<int> price;
  List<String> priceDesc;
  String priceSymbol;
  int hasWished;
  String logData;
  int itemsId;
  int itemType;
  Tags tags;
  int ugcSize;
  int like;
  String brief;
  int subStatus;
  List<String> tagPrefix;
  String ipRightName;
  int ipRightId;
  String brandName;
  int brandId;
  String presaleDeliveryTimeStr;
  int itemsType;
  AdvState advState;
  List<SubSkuList> subSkuList;
  int jumpLinkType;
  String summary;
  String articleId;
  Stats stats;
  bool isLike;
  String commentJumpUrl;
  int projectId;
  String provinceName;
  String venueName;
  String want;
  int startTime;
  int endTime;
  int saleFlagNumber;
  int priceHighOri;
  int priceLowOri;
  bool isFree;
  bool isPrice;
  String cover;
  String banner;
  String projectLabel;
  VenueInfo venueInfo;
  bool isRefund;
  String refundDesc;
  bool hasEticket;
  bool hasPaperTicket;
  int expressFee;
  String ticketDesc;
  List<Bulletin> bulletin;
  String pricePrefix;
  int payType;

  FeedItemModelData({this.id, this.type, this.tagName, this.title, this.templateId, this.imageUrls, this.jumpUrls, this.jumpUrlForNa, this.price, this.priceDesc, this.priceSymbol, this.hasWished, this.logData, this.itemsId, this.itemType, this.tags, this.ugcSize, this.like, this.brief, this.subStatus, this.tagPrefix, this.ipRightName, this.ipRightId, this.brandName, this.brandId, this.presaleDeliveryTimeStr, this.itemsType, this.advState, this.subSkuList, this.jumpLinkType, this.summary, this.articleId, this.stats, this.isLike, this.commentJumpUrl, this.projectId, this.provinceName, this.venueName, this.want, this.startTime, this.endTime, this.saleFlagNumber, this.priceHighOri, this.priceLowOri, this.isFree, this.isPrice, this.cover, this.banner, this.projectLabel, this.venueInfo, this.isRefund, this.refundDesc, this.hasEticket, this.hasPaperTicket, this.expressFee, this.ticketDesc, this.bulletin, this.pricePrefix, this.payType});

  FeedItemModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    tagName = json['tagName'];
    title = json['title'];
    templateId = json['templateId'];
    if (json['imageUrls'] != null) {
      imageUrls = json['imageUrls'].cast<String>();
    }
    if (json['jumpUrls'] != null) {
      jumpUrls = json['jumpUrls'].cast<String>();
    }
    jumpUrlForNa = json['jumpUrlForNa'];
    if (json['price'] != null) {
      price = json['price'].cast<int>();
    }
    if (json['priceDesc'] != null) {
      priceDesc = json['priceDesc'].cast<String>();
    }
    priceSymbol = json['priceSymbol'];
    hasWished = json['hasWished'];
    logData = json['logData'];
    itemsId = json['itemsId'];
    itemType = json['itemType'];
    tags = json['tags'] != null ? new Tags.fromJson(json['tags']) : null;
    ugcSize = json['ugcSize'];
    like = json['like'];
    brief = json['brief'];
    subStatus = json['subStatus'];
    if (json['tagPrefix'] != null) {
      tagPrefix = json['tagPrefix'].cast<String>();
    }
    ipRightName = json['ipRightName'];
    ipRightId = json['ipRightId'];
    brandName = json['brandName'];
    brandId = json['brandId'];
    presaleDeliveryTimeStr = json['presaleDeliveryTimeStr'];
    itemsType = json['itemsType'];
    advState = json['advState'] != null ? new AdvState.fromJson(json['advState']) : null;
    if (json['subSkuList'] != null) {
      subSkuList = new List<SubSkuList>();
      json['subSkuList'].forEach((v) { subSkuList.add(new SubSkuList.fromJson(v)); });
    }
    jumpLinkType = json['jumpLinkType'];
    summary = json['summary'];
    articleId = json['articleId'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    isLike = json['isLike'];
    commentJumpUrl = json['commentJumpUrl'];
    projectId = json['projectId'];
    provinceName = json['provinceName'];
    venueName = json['venueName'];
    want = json['want'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    saleFlagNumber = json['saleFlagNumber'];
    priceHighOri = json['priceHighOri'];
    priceLowOri = json['priceLowOri'];
    isFree = json['isFree'];
    isPrice = json['isPrice'];
    cover = json['cover'];
    banner = json['banner'];
    projectLabel = json['projectLabel'];
    venueInfo = json['venueInfo'] != null ? new VenueInfo.fromJson(json['venueInfo']) : null;
    isRefund = json['isRefund'];
    refundDesc = json['refundDesc'];
    hasEticket = json['hasEticket'];
    hasPaperTicket = json['hasPaperTicket'];
    expressFee = json['expressFee'];
    ticketDesc = json['ticketDesc'];
    if (json['bulletin'] != null) {
      bulletin = new List<Bulletin>();
      json['bulletin'].forEach((v) { bulletin.add(new Bulletin.fromJson(v)); });
    }
    pricePrefix = json['pricePrefix'];
    payType = json['payType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['tagName'] = this.tagName;
    data['title'] = this.title;
    data['templateId'] = this.templateId;
    data['imageUrls'] = this.imageUrls;
    data['jumpUrls'] = this.jumpUrls;
    data['jumpUrlForNa'] = this.jumpUrlForNa;
    data['price'] = this.price;
    data['priceDesc'] = this.priceDesc;
    data['priceSymbol'] = this.priceSymbol;
    data['hasWished'] = this.hasWished;
    data['logData'] = this.logData;
    data['itemsId'] = this.itemsId;
    data['itemType'] = this.itemType;
    if (this.tags != null) {
      data['tags'] = this.tags.toJson();
    }
    data['ugcSize'] = this.ugcSize;
    data['like'] = this.like;
    data['brief'] = this.brief;
    data['subStatus'] = this.subStatus;
    data['tagPrefix'] = this.tagPrefix;
    data['ipRightName'] = this.ipRightName;
    data['ipRightId'] = this.ipRightId;
    data['brandName'] = this.brandName;
    data['brandId'] = this.brandId;
    data['presaleDeliveryTimeStr'] = this.presaleDeliveryTimeStr;
    data['itemsType'] = this.itemsType;
    if (this.advState != null) {
      data['advState'] = this.advState.toJson();
    }
    if (this.subSkuList != null) {
      data['subSkuList'] = this.subSkuList.map((v) => v.toJson()).toList();
    }
    data['jumpLinkType'] = this.jumpLinkType;
    data['summary'] = this.summary;
    data['articleId'] = this.articleId;
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    data['isLike'] = this.isLike;
    data['commentJumpUrl'] = this.commentJumpUrl;
    data['projectId'] = this.projectId;
    data['provinceName'] = this.provinceName;
    data['venueName'] = this.venueName;
    data['want'] = this.want;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['saleFlagNumber'] = this.saleFlagNumber;
    data['priceHighOri'] = this.priceHighOri;
    data['priceLowOri'] = this.priceLowOri;
    data['isFree'] = this.isFree;
    data['isPrice'] = this.isPrice;
    data['cover'] = this.cover;
    data['banner'] = this.banner;
    data['projectLabel'] = this.projectLabel;
    if (this.venueInfo != null) {
      data['venueInfo'] = this.venueInfo.toJson();
    }
    data['isRefund'] = this.isRefund;
    data['refundDesc'] = this.refundDesc;
    data['hasEticket'] = this.hasEticket;
    data['hasPaperTicket'] = this.hasPaperTicket;
    data['expressFee'] = this.expressFee;
    data['ticketDesc'] = this.ticketDesc;
    if (this.bulletin != null) {
      data['bulletin'] = this.bulletin.map((v) => v.toJson()).toList();
    }
    data['pricePrefix'] = this.pricePrefix;
    data['payType'] = this.payType;
    return data;
  }
}

class Tags {
  List<String> marketingTagNames;
  List<String> saleTypeTagNames;
  String typeAndLimitTagName;
  List<String> recommendTagNames;
  Null blindBoxHideTypeNames;
  Null blindBoxHasWishNames;
  List<String> titleTagNames;
  List<String> tagsSort;

  Tags({ this.marketingTagNames, this.saleTypeTagNames, this.typeAndLimitTagName, this.recommendTagNames, this.blindBoxHideTypeNames, this.blindBoxHasWishNames, this.titleTagNames, this.tagsSort,});

  Tags.fromJson(Map<String, dynamic> json) {

    marketingTagNames = json['marketingTagNames'].cast<String>();
    saleTypeTagNames = json['saleTypeTagNames'].cast<String>();
    typeAndLimitTagName = json['typeAndLimitTagName'];
    recommendTagNames = json['recommendTagNames'].cast<String>();
    blindBoxHideTypeNames = json['blindBoxHideTypeNames'];
    blindBoxHasWishNames = json['blindBoxHasWishNames'];
    titleTagNames = json['titleTagNames'].cast<String>();
    tagsSort = json['tagsSort'].cast<String>();

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['marketingTagNames'] = this.marketingTagNames;
    data['saleTypeTagNames'] = this.saleTypeTagNames;
    data['typeAndLimitTagName'] = this.typeAndLimitTagName;
    data['recommendTagNames'] = this.recommendTagNames;
    data['blindBoxHideTypeNames'] = this.blindBoxHideTypeNames;
    data['blindBoxHasWishNames'] = this.blindBoxHasWishNames;
    data['titleTagNames'] = this.titleTagNames;
    data['tagsSort'] = this.tagsSort;
    return data;
  }
}

class AdvState {
  bool preSale;
  int remain;
  int presaleStartOrderTime;
  Null presaleEndOrderTime;
  Null state;
  Null depositType;
  String deposit;
  String maxDeposit;
  Null activityDeposit;
  Null maxActivityDeposit;

  AdvState({this.preSale, this.remain, this.presaleStartOrderTime, this.presaleEndOrderTime, this.state, this.depositType, this.deposit, this.maxDeposit, this.activityDeposit, this.maxActivityDeposit});

  AdvState.fromJson(Map<String, dynamic> json) {
    preSale = json['preSale'];
    remain = json['remain'];
    presaleStartOrderTime = json['presaleStartOrderTime'];
    presaleEndOrderTime = json['presaleEndOrderTime'];
    state = json['state'];
    depositType = json['depositType'];
    deposit = json['deposit'];
    maxDeposit = json['maxDeposit'];
    activityDeposit = json['activityDeposit'];
    maxActivityDeposit = json['maxActivityDeposit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['preSale'] = this.preSale;
    data['remain'] = this.remain;
    data['presaleStartOrderTime'] = this.presaleStartOrderTime;
    data['presaleEndOrderTime'] = this.presaleEndOrderTime;
    data['state'] = this.state;
    data['depositType'] = this.depositType;
    data['deposit'] = this.deposit;
    data['maxDeposit'] = this.maxDeposit;
    data['activityDeposit'] = this.activityDeposit;
    data['maxActivityDeposit'] = this.maxActivityDeposit;
    return data;
  }
}

class SubSkuList {
  String imageUrl;
  int type;
  String name;
  Null subSkuId;
  Null saleStatus;
  bool wishedSku;

  SubSkuList({this.imageUrl, this.type, this.name, this.subSkuId, this.saleStatus, this.wishedSku});

  SubSkuList.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    type = json['type'];
    name = json['name'];
    subSkuId = json['subSkuId'];
    saleStatus = json['saleStatus'];
    wishedSku = json['wishedSku'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['type'] = this.type;
    data['name'] = this.name;
    data['subSkuId'] = this.subSkuId;
    data['saleStatus'] = this.saleStatus;
    data['wishedSku'] = this.wishedSku;
    return data;
  }
}

class Stats {
  int view;
  int like;
  int reply;

  Stats({this.view, this.like, this.reply});

  Stats.fromJson(Map<String, dynamic> json) {
    view = json['view'];
    like = json['like'];
    reply = json['reply'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['view'] = this.view;
    data['like'] = this.like;
    data['reply'] = this.reply;
    return data;
  }
}

class VenueInfo {
  int id;
  String name;
  int city;
  int province;
  int district;
  String addressDetail;
  int placeNum;
  int status;
  String traffic;
  Coordinate coordinate;
  String provinceName;
  String cityName;
  String districtName;

  VenueInfo({this.id, this.name, this.city, this.province, this.district, this.addressDetail, this.placeNum, this.status, this.traffic, this.coordinate, this.provinceName, this.cityName, this.districtName});

  VenueInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    province = json['province'];
    district = json['district'];
    addressDetail = json['address_detail'];
    placeNum = json['place_num'];
    status = json['status'];
    traffic = json['traffic'];
    coordinate = json['coordinate'] != null ? new Coordinate.fromJson(json['coordinate']) : null;
    provinceName = json['province_name'];
    cityName = json['city_name'];
    districtName = json['district_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['city'] = this.city;
    data['province'] = this.province;
    data['district'] = this.district;
    data['address_detail'] = this.addressDetail;
    data['place_num'] = this.placeNum;
    data['status'] = this.status;
    data['traffic'] = this.traffic;
    if (this.coordinate != null) {
      data['coordinate'] = this.coordinate.toJson();
    }
    data['province_name'] = this.provinceName;
    data['city_name'] = this.cityName;
    data['district_name'] = this.districtName;
    return data;
  }
}

class Coordinate {
  String type;
  String coor;

  Coordinate({this.type, this.coor});

  Coordinate.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coor = json['coor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coor'] = this.coor;
    return data;
  }
}

class Bulletin {
  int id;
  String title;
  String content;
  String ctime;
  int projectId;
  String time;

  Bulletin({this.id, this.title, this.content, this.ctime, this.projectId, this.time});

  Bulletin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    ctime = json['ctime'];
    projectId = json['project_id'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['content'] = this.content;
    data['ctime'] = this.ctime;
    data['project_id'] = this.projectId;
    data['time'] = this.time;
    return data;
  }
}

