import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class YoutubeWidget extends StatelessWidget {
   YoutubeWidget({Key? key,required this.initialVideoId}) : super(key: key);
  String initialVideoId;
  @override
  Widget build(BuildContext context) {
     YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: initialVideoId,

    );

     return  SizedBox(
       height: 23.h,
       width: 90.w,
       child: YoutubePlayer(
        controller: _controller,
        liveUIColor: Colors.transparent,
    ),
     );
  }
}
