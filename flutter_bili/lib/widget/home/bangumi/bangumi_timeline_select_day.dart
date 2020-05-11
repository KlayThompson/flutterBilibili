import 'package:flutter/material.dart';
import 'package:flutter_bili/provider/bangumi_provider.dart';
import 'package:provider/provider.dart';

class BangumiTimelineTimeSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int selectDay = Provider.of<BangumiProvider>(context).selectDay;
    int today = Provider.of<BangumiProvider>(context).today;
    List<Map> days = [];
    switch (today) {
      case 1:
        days = [
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
        ];
        break;
      case 2:
        days = [
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
        ];
        break;
      case 3:
        days = [

          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
        ];
        break;
      case 4:
        days = [
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
        ];
        break;
      case 5:
        days = [
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
        ];
        break;
      case 6:
        days = [
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
        ];
        break;
      case 7:
        days = [
          {
            'day': '四',
            'select': selectDay == 4,
            'dayInt': 4
          },
          {
            'day': '五',
            'select': selectDay == 5,
            'dayInt': 5
          },
          {
            'day': '六',
            'select': selectDay == 6,
            'dayInt': 6
          },
          {
            'day': '日',
            'select': selectDay == 7,
            'dayInt': 7
          },
          {
            'day': '一',
            'select': selectDay == 1,
            'dayInt': 1
          },
          {
            'day': '二',
            'select': selectDay == 2,
            'dayInt': 2
          },
          {
            'day': '三',
            'select': selectDay == 3,
            'dayInt': 3
          },
        ];
        break;
      default:
        break;
    }
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: days.map((val) {
          return _singleItem(context,val);
        }).toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context,Map dic) {
    bool isSelect = dic['select'];
    return InkWell(
      onTap: () {
        print('点击了------${dic['dayInt']}');
        Provider.of<BangumiProvider>(context,listen: false).selectDayWithInt(dic['dayInt']);
      },
      child: Container(
        width: 50,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelect ? Colors.pink[300] : Colors.white,
        ),
        child: Text(
          isSelect ? '周'+dic['day'] : dic['day'],
          style: TextStyle(
              color: isSelect ? Colors.white : Color(0xff777777),
              fontSize: 14
          ),
        ),
      ),
    );
  }
}
