import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_live_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendLiveWidget extends StatelessWidget {

  final Room room;
  RecommendLiveWidget(this.room);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xffdfdfdf)
          )
        )
      ),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _roomGridWidget(context),
          _bottomMoreRoom()
        ],
      ),
    );
  }

  Widget _roomGridWidget(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(490),
      padding: EdgeInsets.only(left: 10,right: 10),
//      color: Colors.pink,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.1
          ),
          itemCount: room.list.length,
          itemBuilder: (context, index) {
            return _singleCell(room.list[index]);
          }
      ),
    );
  }

  //room cell
  Widget _singleCell(RoomList item) {
    return Container(
//      color: Colors.black26,
        child: Column(
          children: <Widget>[
            _cellCoverImage(item),
            _cellBottomText(item)
          ],
        ),  
    );
  }

  //cell cover image
  Widget _cellCoverImage(RoomList item) {
    return Container(
      width: ScreenUtil().setWidth(172.5),
      height: ScreenUtil().setHeight(108),
//      color: Colors.pink,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: item.cover,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: ScreenUtil().setWidth(165),
                  height: ScreenUtil().setHeight(120),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: _coverImageBottomWidget(item)
          ),
          Positioned(
            left: 0,
            top: 0,
            child: _coverImageTopLeftTagImage(item.pendentList),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: _coverImageTopRightTagImage(item.pendentList),
          )
        ],
      ),

    );
  }

  // bottom user and online people
  Widget _coverImageBottomWidget(RoomList item) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
        gradient: LinearGradient(
          colors: [Colors.transparent,Color.fromRGBO(0, 0, 0, 0.7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 4, 5, 5),
              child: Text(
                item.uname,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: ScreenUtil().setSp(11),color: Colors.white),),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
//              color: Colors.pink,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.supervised_user_circle,size: 12,color: Colors.white,),
                  Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 8, 0),
                    child: Text('${item.online}',style: TextStyle(fontSize: ScreenUtil().setSp(11),color: Colors.white),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // cover image 右上角tag标签
  Widget _coverImageTopLeftTagImage(List<PendentList> pendentList) {
    if (pendentList.length != 0) {
      bool isLeft = false;
      PendentList model;
      pendentList.forEach((item) {
        if (item.position == 2) {
          isLeft = true;
          model = item;
        }
      });
      if (isLeft) {

        return Container(
          width: ScreenUtil().setWidth(83),
//          height: ScreenUtil().setHeight(18),
          child: Stack(
            children: <Widget>[
              Image.network(model.pic),
              Positioned(
                left: 35,
                bottom: 5,
                child: Text(model.content,style: TextStyle(fontSize: ScreenUtil().setSp(11),color: Colors.white),),
              )
            ],
          ),
        );
      } else {
        return Container(
        );
      }
    } else {
      return Container(
      );
    }
  }

  Widget _coverImageTopRightTagImage(List<PendentList> pendentList) {
    if (pendentList.length != 0) {
      bool isRight = false;
      PendentList model;
      pendentList.forEach((item) {
        if (item.position == 1) {
          isRight = true;
          model = item;
        }
      });
      if (isRight) {
        return Container(
          width: ScreenUtil().setWidth(30),
//          height: ScreenUtil().setHeight(22),
          child: Image.network(model.pic),
        );
      } else {
        return Container(
        );
      }
    } else {
      return Container(
      );
    }
  }
  
  Widget _cellBottomText(RoomList item) {
    return Container(
//      color: Colors.pink,
      width: ScreenUtil().setWidth(172.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10),
            child: Text(
              item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: ScreenUtil().setSp(14),color: Color(0xff444444)),
            ),
          ),
          SizedBox(height: 4,),
          Text(
            item.areaV2Name,
            style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color(0xff888888)),
          ),
        ],
      ),
    );
  }

  //推荐直播
  Widget _titleWidget() {
    return Container(
      height: ScreenUtil().setHeight(40),
      padding: EdgeInsets.only(top: 10),
//      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 15),
            child: Text(this.room.moduleInfo.title, style: TextStyle(fontSize: ScreenUtil().setSp(14),fontWeight: FontWeight.w500),),
          ),
          Padding(
              padding: EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  Text('换一换',style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Colors.black38),),
                  Icon(Icons.refresh,color: Colors.black38,size: 14,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomMoreRoom() {
    return Container(
      height: ScreenUtil().setHeight(40),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('更多${room.moduleInfo.count}个推荐直播',style: TextStyle(fontSize: ScreenUtil().setSp(13),color: Colors.pink[300]),),
            Icon(CupertinoIcons.forward,color: Colors.pink[300],size: 16,)
          ],
        )
      ),
    );
  }
}
