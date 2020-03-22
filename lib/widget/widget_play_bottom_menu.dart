import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fskymusic/provider/play_songs_model.dart';
import 'package:fskymusic/widget/h_empty_view.dart';
import 'package:fskymusic/widget/v_empty_view.dart';
import 'package:fskymusic/widget/widget_img_menu.dart';

class PlayBottomMenuWidget extends StatelessWidget {
  final PlaySongsModel model;

  PlayBottomMenuWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setWidth(150),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          HEmptyView(80),
          ImageMenuWidget(
            'images/icon_song_left.png',
            80,
            onTap: () {
              model.prePlay();
            },
          ),
          ImageMenuWidget(
            model.curState != AudioPlayerState.PAUSED
                ? 'images/icon_song_pause.png'
                : 'images/icon_song_play.png',
            150,
            onTap: () {
              model.togglePlay();
            },
          ),
          ImageMenuWidget(
            'images/icon_song_right.png',
            80,
            onTap: () {
              model.nextPlay();
            },
          ),
           HEmptyView(80),
        ],
      ),
    );
  }
}
