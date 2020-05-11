class Config {
  static String liveBaseUrl = 'https://api.live.bilibili.com/';
  static String commonBaseUrl = 'https://app.bilibili.com/';
  //直播tab
  static String liveAllList = liveBaseUrl + 'xlive/app-interface/v2/index/getAllList?access_key=29adf7ff7e932e11a8f8a8241288fa41&actionKey=appkey&ad_extra=3B10AC670E186E2E15CC23048AEB079C9FA8FF5D0D80D24F6777957D215C32F77133BFE7456F571C200AC213C766B3FFFEE85AC33F66B68A0E0A88628B1369C46F6A36D837711107EA2C60B7538B70B2673939E0454DB3A6C4790378A12620C94035E40D19D925F89EDEDF62274B930C66E84EE00FDF8C0F74AEDDFD62B18C4B305E45DE7CFAC178A3932E8F2DA1FAD180F3596B3F1FDF4E8BD8E8F63E6DE1A9C2731AFB7114A206C5FCB7F55EA186D2D86AC1D89ABECF362E26DB7E6233C0CF79B0231441CD349BC99E3DB527C3B00502E189566FC2E785CE3D5D80BA2A68AA9587A9073F683A255C2BE99A402F8EF68C80778A7D61F8F8E4B121A586BA08B0274DFAB97D9A87981D0CDB8671FB2AC071605C083A7F10B4E6CE45AEDE64F4D24BD615E57C7D46637CD4832578D9439518A6493017A9C10CEE16000E1279A23986AC4B30B5FEE050ACC3B9092468DBCEB4ED91C1E69880B24DB9EAC42793D6EF856BC5F4CE18554BA2CDABA611CDBCA9EF6EEC74F531C052C02CDE63A7FEA74CA3A8CA7BCDAB17DB41AA68F81B22F8E4BD7D2C9CE5C5A57A74DA7F534AB28872EC3FD494B6DD2F46453A6591D054A7E8838223D0D6B4A2800001E0CF9CC231F32A6A5221F327522650FDAE4C7B1BC9D48017EB799961275F1AAE3DAD328FD329C124FB58576CB62D18103132B15855345B5B832251906CA1A02E984E82C7CE77944D101E2C093BD618940240D9416526AD79C6F1CA9B3CC41AF0ADB63E4FFE1626DDEBCC31855AD9BC1421822EE6619D7581A23F893A7A36E5E01BA8E853108906E6C9A31206C96004CC96A18923E625121E4FEFD0FF11389A979A0E2378FCA9&appkey=27eb53fc9058f8c3&build=9330&device=phone&device_name=iPhone%206S%20Plus&https_url_req=0&mobi_app=iphone&network=wifi&platform=ios&qn=0&rec_page=2&relation_page=2&scale=3&sign=f4be31d2359e43aff6cc9d133aeb5fcc&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1587869119';
  //app配置信息
  static String appConfig = commonBaseUrl + 'x/resource/show/tab?access_key=29adf7ff7e932e11a8f8a8241288fa41&actionKey=appkey&appkey=27eb53fc9058f8c3&build=9330&device=phone&mobi_app=iphone&platform=ios&sign=d0d4d825ba58a516c9302fe717e6f215&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1587869231';
  //推荐tab
  static String homeRecommend = commonBaseUrl + 'x/v2/feed/index?access_key=29adf7ff7e932e11a8f8a8241288fa41&actionKey=appkey&ad_extra=3B10AC670E186E2E15CC23048AEB079C9FA8FF5D0D80D24F6777957D215C32F77133BFE7456F571C200AC213C766B3FFFEE85AC33F66B68A0E0A88628B1369C46F6A36D837711107EA2C60B7538B70B2673939E0454DB3A6C4790378A12620C94035E40D19D925F89EDEDF62274B930C66E84EE00FDF8C0F74AEDDFD62B18C4B305E45DE7CFAC178A3932E8F2DA1FAD1385744F22DCDF8032B5C8055E40CBC32EF1E73AD7F4E208FD9A3892F7257610BA06844A830ED8D04A2AFFD296E39EA851D5EBBEB47FA5A0C1708F1725FBA10B1903CD62499B9CF916F3AE4D303563E6BBBF343F6C611296AE25AAF71516D8B30B7B59085149E637AD239C1FE88C4544D6CAD8D4DBEBC5628333A4C5EFFFD81F4474D040C7A504C0251354A6F913AE412B0B1AEEA8DD320F05B5F94E5FCF68CA7E7F060E74CAE08C6265740DFB7CB9E333D9FE825230C052F7EA84BA8920A29DDC2E3755C1026BC56B60BBED0C2194168A34479AFE44A5ADE56BB68F8C8AC4539E254AC3D835CA03A1971B4AAFF880023A81697F0BFCD22B002E5FF665C5A354197A87B618A945F66754B3D2557070EC9EF1BC08A37D316859B40E1B89493EDBE6BC8E4F5A1CB6B18B9F462619AB589B677EF5C01FEE6365079099616F877609757CCF61A15F90A91B8DE03EEF2E9BB5AC5BB26A116AE7E56C53D7912C4DB1C748EEBF2EB7B6EDCB0A927FDAD1BCA8920E248A9209E48B086F736CFC0A7FCBAC396E6EE15852F5FD6D81B6418DF2764F79F2A9FCB8C933BCC13FB2F8DAAE363E7D9C08B79472AB00FA1064718490FA57F685003820D6F6388425E714AC6B63C3D31466B4A45124CE1BA4144DF23A3F321&appkey=27eb53fc9058f8c3&autoplay_card=2&banner_hash=15403571917923660123&build=9330&column=2&device=phone&device_name=iPhone%206S%20Plus&flush=6&fnval=16&fnver=0&fourk=1&https_url_req=0&idx=1587538467&mobi_app=iphone&network=wifi&open_event=hot&platform=ios&pull=1&qn=32&recsys_mode=0&sign=960a6e7c16988268365f5b203d5d919c&splash_id=&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1587969010';
  //频道-频道
  static String channel = commonBaseUrl + 'x/v2/channel/square2?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&appkey=27eb53fc9058f8c3&auto_refresh=&build=9340&device=phone&fnval=16&fnver=0&fourk=1&mobi_app=iphone&offset_new=&offset_rcmd=&platform=ios&pn=0&qn=32&sign=ceac26ab0b580b834646e7c39899c1a6&spmid=traffic.channel-square.0.0&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588985788';
  //频道-分区
  static String area = commonBaseUrl + 'x/v2/channel/region/list?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&appkey=27eb53fc9058f8c3&build=9340&device=phone&mobi_app=iphone&platform=ios&sign=15c5e5779e021ff11065dcaff3d0d110&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588985889';
  //动态-综合
  static String dynamicSvr = 'https://api.vc.bilibili.com/dynamic_svr/v1/dynamic_svr/dynamic_new?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&ad_extra=3B10AC670E186E2E15CC23048AEB079C9FA8FF5D0D80D24F6777957D215C32F77133BFE7456F571C200AC213C766B3FFFEE85AC33F66B68A0E0A88628B1369C46F6A36D837711107EA2C60B7538B70B2673939E0454DB3A6C4790378A12620C94035E40D19D925F89EDEDF62274B930C66E84EE00FDF8C0F74AEDDFD62B18C4B305E45DE7CFAC178A3932E8F2DA1FAD1201EC596C7A507226963D08CD492DDF951AAAF9F4E007BD4541E52E869B6AD1CB3C5B379FDC9AFA5EBF92E8C586F7758EEE1B1169ABB5490E2E16A1CD614E0CD790E17F9DE707D4CF022A5514A5BE7A0272AF347FCFAD982F8BA2181D90DFCD0ED7AACC5861EDD040BCCBDD51C460B47AEC06C2AF70EFEE518EF899A2EF14752CB38A23F8E7C1CD377250325DBFC01CB64B7A171B9DC945202FA9E8E759FBA5291BF433E96F11591EC76A02C6DB9E312B3E65077FBFA3DB511DA5BE4682C39AAF84E79DEFFA23296BF79113702EB1732073ED49AEB70421CA23EB0955FDE11A627B1D3D58979D4A015D1E29D83ED93FE54C9991C7D55E03057D9104453C99363792BCDB0785156A2B50DA656A2BA8C0BC9C09D0C6E9B848AD39D5576C7A10FAD0BD48485AE4A234BD4842051C8DAD6F4DEB4D72EFF553DE187AF12F1819F619960419ECBAE3DE6815A2BA523E7D730EE3B556F729DBC7DE663286060DDFD3B6E4CC0F3A8730E1FBA95DE1366068E14E4DFDBEBCDC15F747EB6F3DF3C91DE00038B0DC038EDE0C75C68D49CCFC735F05E87B3A66BB0482456027AB49E09DA8DA210A7F3BE8BE26033D22FA65FB07D3BC500F98F5308F86DD9F6E20EF491019C2F5A6A57AFA2936030792A5D087062D8C9&appkey=27eb53fc9058f8c3&assist_update_num_dy_id=&build=9340&cold_start=1&device=phone&device_name=iPhone%206S%20Plus&dislike_ts=0&from=feed&https_url_req=0&mobi_app=iphone&platform=ios&qn=32&rsp_type=2&sign=caecc3551c4baf2d2d1240a27112feba&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588985974&type_list=268435455&uid=492669777&update_num_dy_id=0&video_meta=qn%3A32%2Cfnval%3A16%2Cfnver%3A0%2Cfourk%3A1%2C';
  //会员购
  static String mallHome = 'https://mall.bilibili.com/mall-c-search/home/index/v3?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&adExtra=3B10AC670E186E2E15CC23048AEB079C9FA8FF5D0D80D24F6777957D215C32F77133BFE7456F571C200AC213C766B3FFFEE85AC33F66B68A0E0A88628B1369C46F6A36D837711107EA2C60B7538B70B2673939E0454DB3A6C4790378A12620C94035E40D19D925F89EDEDF62274B930C66E84EE00FDF8C0F74AEDDFD62B18C4B305E45DE7CFAC178A3932E8F2DA1FAD1201EC596C7A507226963D08CD492DDF951AAAF9F4E007BD4541E52E869B6AD1CB3C5B379FDC9AFA5EBF92E8C586F7758EEE1B1169ABB5490E2E16A1CD614E0CD790E17F9DE707D4CF022A5514A5BE7A0272AF347FCFAD982F8BA2181D90DFCD0ED7AACC5861EDD040BCCBDD51C460B47AEC06C2AF70EFEE518EF899A2EF14752CB38A23F8E7C1CD377250325DBFC01CB64B7A171B9DC945202FA9E8E759FBA5291BF433E96F11591EC76A02C6DB9E312B3E65077FBFA3DB511DA5BE4682C39AAF84E79DEFFA23296BF79113702EB1732073ED49AEB70421CA23EB0955FDE11A627B1D3D58979D4A015D1E29D83ED93FE54C9991C7D55E03057D9104453C99363792BCDB0785156A2B50DA656A2BA8C0BC9C09D0C6E9B848AD39D5576C7A10FAD0BD48485AE4A234BD4842051C8DAD6F4DEB4D72EFF553DE187AF12F1819F619960419ECBAE3DE6815A2BA523E7D730EE3B556F729DBC7DE663286060DDFD3B6E4CC0F3A8730E1FBA95DE1366068E14E4DFDBEBCDC15F747EB6F3DF3C91DE00038B0DC038EDE0C75C68D49CCFC735F05E87B3A66BB0482456027AB49E09DA8DA210A7F3BE8BE26033D22FA65FB07D3BC500F98F5308F86DD9F6E20EF491019C2F5A6A57AFA2936030792A5D087062D8C9&appkey=27eb53fc9058f8c3&build=9340&cityCode=310109&device=phone&feedType=0&mVersion=58&mobi_app=iphone&pageNum=1&platform=ios&sign=197e30efeb29fd9bc1b5121a67347d21&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&status=1&ts=1588987373';
  //我的-已登录
  static String mine = 'https://app.bilibili.com/x/v2/account/mine?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&appkey=27eb53fc9058f8c3&build=9340&device=phone&mobi_app=iphone&platform=ios&sign=88410bd964a2fe7c13656a12f923c077&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588988729';
  //我的-未登录
  static String mineNotLogin = 'https://app.bilibili.com/x/v2/account/mine?actionKey=appkey&appkey=27eb53fc9058f8c3&build=9340&device=phone&mobi_app=iphone&platform=ios&sign=34ac8c9620dbcb07bd55fa3016986f1a&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588990711';
  //热门-热门列表
  static String popularList = 'https://app.bilibili.com/x/v2/show/popular/index?build=5470400&idx=1';
  //追番
  static String bangumi = 'https://api.bilibili.com/pgc/app/v2/page/bangumi?access_key=771cc4cd2f5448f91481abef2f887651&actionKey=appkey&ad_extra=3B10AC670E186E2E15CC23048AEB079C9FA8FF5D0D80D24F6777957D215C32F77133BFE7456F571C200AC213C766B3FFFEE85AC33F66B68A0E0A88628B1369C46F6A36D837711107EA2C60B7538B70B2673939E0454DB3A6C4790378A12620C94035E40D19D925F89EDEDF62274B930C66E84EE00FDF8C0F74AEDDFD62B18C4B305E45DE7CFAC178A3932E8F2DA1FAD1A601561A43F3A18BCD5446911F17CB55C1BB4E1BF87F949E6D3D4B6EE4BB94665DC21CAD1513E133DB74EA0EB5186A71BF5A84D1E02AAF1BF06309239DA407A9FD83665FDAA4767B4AD7F00FDD36CA413A429C8A3096923356994F6AAE6F7765C6C0D6378FFD3F66617660C44D52618F5CF2D11CF88B03C6EA8BC7B63F21382511A0D606E0C2833F49170D29611111E1F45A0ED4C7D4799A6EDF97959A03B6D29661318A1C0F20D84B80A351B1854C9DD96ADBF2294883ED9B2FD5145EC0EC8516A75EB1BE368787313F9BA13256C97F904D0686F9A1722AFBB7428F7E2AA625D33D028D7349B2F50A9A8A4845E35857095D63EBFE5C098E1D6399BDC04DCB63222DE1C58EFFB098A3D8E4C62A283E89F306730DCAC7574ABCFA1A88E9712D9F59DEC3F7AC49C2A6A833E5556386A45867BBB90BE7071E79B5E5B5149DD8C3AD8A250BA88C85DB1697F2B2140554ED91BD47C53EB36F67601EA8C0E8B1E5E7717EAF70C0A678E51A8E7EBB8771063C5A6D59C585E6689D558B2FAC4DE6055BCE4E4D3EFC8B81617D73B6531F5C533370644531D9D6F94F7963F1D979D6A89FCABDCCA814ED0BA41191ADE09A6D05B6834A7810D244BDD7DBA67BEE43EA39A61FC585F2C8E69D8469F7D3643A7FCE4EBF&appkey=27eb53fc9058f8c3&build=9340&device=phone&filtered=0&fnval=16&fnver=0&fourk=1&mobi_app=iphone&pgc_home_timeline_abtest=&platform=ios&sign=17493d7b942996855629f28da98a329d&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1589156852';
  //影视
  static String cinema = 'https://api.bilibili.com/pgc/app/v2/page/cinema/tab?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&ad_extra=3B10AC670E186E2E15CC23048AEB079C9FA8FF5D0D80D24F6777957D215C32F77133BFE7456F571C200AC213C766B3FFFEE85AC33F66B68A0E0A88628B1369C46F6A36D837711107EA2C60B7538B70B2673939E0454DB3A6C4790378A12620C94035E40D19D925F89EDEDF62274B930C66E84EE00FDF8C0F74AEDDFD62B18C4B305E45DE7CFAC178A3932E8F2DA1FAD1D7AB3B19D9DF47E4BCFA328E8184E6C816020781DD3102BC7B4C80A75F232D2972DE938CEC024C7233C2B43ABC9DF4210895D5F19EA3F45A4F922657553D959FAE9F647C9ACA840911939175F3FA432D0EA06D989D293567F47C0D695407ED2217997E4F5B5464C9884FAF8FA768A07B14DBCC6DD2FD450654A1DBC7E8BED6CF6F55F0FFAB1E34406AD3A99FDE5E624BAC7AA1058F9ECBE960E851B0D5EFFA1BB486B6763C2F92B321CF1E1F0CAEC1BA7F2DE064350B34E10F5441EA1CF22A5158E727EC9362CE601C4B6060DE5B6DF8D23FB4016DEC65BAE4665C1F9470B20C0B52168D11C258508B3C3DA3E3D98B1E4142E15A3E5A110A432DFDB82630C16F422F50CB364009BD3E0E45B485DECCA7AB7AC23D118DD96AF0771CCD7F0602C558707EDCD89A6393A8AFF11EA310491B798B01853381094DE6ACC23635FE6CA28B31F43A72B042D4DAE621954C978AEE847CD2DAD56AF359D21CE3DA66336C80254E2F8DA94DB241A9FD6AD9573EBA6AE6F341A87F122CE74EA4CD7707A46BCDB9CE48EDB051FF3CB6E19ADA0D320F4761FC07F775512528E3AB8435FF2E78A84A11274A6246161DC10707A34E72A33690C04BED784DBDE068D8516E7F26B03FD5464DB85ABEF42E165E0646FBD13D1C&appkey=27eb53fc9058f8c3&build=9340&device=phone&filtered=0&fnval=16&fnver=0&fourk=1&mobi_app=iphone&pgc_home_timeline_abtest=&platform=ios&sign=2f5c4ac51d55530aea5030b7dcc0d380&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588990369';
  //抗击肺炎
  static String coronavirus = 'https://app.bilibili.com/x/v2/feed/index/tab?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&appkey=27eb53fc9058f8c3&build=9340&device=phone&fnval=16&fnver=0&fourk=1&id=51079&mobi_app=iphone&platform=ios&qn=32&sign=798733b9b66b21c64cbcdadfea23a18d&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588990487';
  //学习区
  static String studyArea = 'https://app.bilibili.com/x/v2/feed/index/tab?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&appkey=27eb53fc9058f8c3&build=9340&device=phone&fnval=16&fnver=0&fourk=1&id=51639&mobi_app=iphone&platform=ios&qn=32&sign=edf5530f05bb0ecdeb2c2c1a6ce18beb&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588990564';
  //新时代
  static String newEra = 'https://app.bilibili.com/x/v2/feed/index/tab?access_key=cf98adceb581c158d863cab60dd31b51&actionKey=appkey&appkey=27eb53fc9058f8c3&build=9340&device=phone&fnval=16&fnver=0&fourk=1&id=38247&mobi_app=iphone&platform=ios&qn=32&sign=63c82d7f98c7ce98f1009670847d3c87&statistics=%7B%22appId%22%3A1%2C%22version%22%3A%225.58.1%22%2C%22abtest%22%3A%22%22%2C%22platform%22%3A1%7D&ts=1588990608';
}

class Time {
  static int dayOfWeek = 7;
}