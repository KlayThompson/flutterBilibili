import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle style;
  final bool expand;
  ExpandableText({this.text, this.maxLines, this.style, this.expand = false});
  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool show = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    show = widget.expand;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      final span = TextSpan(text: widget.text ?? '', style: widget.style);

      final tp = TextPainter(
          text: span, maxLines: widget.maxLines, textDirection: TextDirection.ltr);

      tp.layout(maxWidth: size.maxWidth);

      if (tp.didExceedMaxLines) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            show
                ? Text(widget.text ?? '', style: widget.style)
                : Text(widget.text ?? '',
                maxLines: widget.maxLines,
                overflow: TextOverflow.ellipsis,
                style: widget.style),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                setState(() {
                  show = !show;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 2),
                child: Text(show ? '收起' : '全文',
                    style: TextStyle(
                        fontSize: widget.style != null ? widget.style.fontSize : null,
                        color: Colors.blue)),
              ),
            ),
          ],
        );
      } else {
        return Text(widget.text ?? '', style: widget.style);
      }
    });
  }
}


