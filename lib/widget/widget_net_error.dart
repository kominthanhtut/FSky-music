import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fskymusic/widget/common_text_style.dart';
import 'package:fskymusic/widget/v_empty_view.dart';

class NetErrorWidget extends StatelessWidget {
  final VoidCallback callback;

  NetErrorWidget({@required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setWidth(200),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              size: ScreenUtil().setWidth(80),
            ),
            VEmptyView(ScreenUtil().setWidth(10)),
            Text(
              'ပြန်လည်တောင်းဆိုပါ',
              style: commonTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
