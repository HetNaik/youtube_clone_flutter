import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/Constants/colors.dart';
import 'package:youtube_clone_flutter/Constants/spacers.dart';

Widget kAppBar = AppBar(shadowColor: Colors.grey, elevation: 0, actions: [
  sbw10,
  Row(
    children: [
      Container(
        height: 15,
        width: 20,
        color: Colors.red,
      ),
      sbw10,
      Text(
        'YouTube',
      )
    ],
  ),
  Spacer(),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(Icons.cast_connected_outlined),
      sbw15,
      Icon(Icons.notifications),
      sbw15,
      Icon(Icons.search),
      sbw15,
      Icon(Icons.face_rounded)
    ],
  ),
  sbw10,
]);

class VideoInstanceWidget extends StatelessWidget {
  final String title, channel, views, span, imageString, channelString;
  const VideoInstanceWidget({
    Key key,
    this.title,
    this.channel,
    this.views,
    this.span,
    this.imageString,
    this.channelString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        sbh15,
        Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'prototype.png',
              fit: BoxFit.fill,
            )),
        sbh10,
        Row(
          children: [
            sbw10,
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.red,
              child: Text('H'),
            ),
            sbw10,
            Container(
              width: MediaQuery.of(context).size.width - 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: kWhiteColor),
                  ),
                  Text(
                      channel +
                          ' • ' +
                          views +
                          ' views' +
                          ' • ' +
                          span +
                          ' ago',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(color: kVideoSubtitleColor))
                ],
              ),
            ),
            Icon(
              Icons.more_vert,
              color: kWhiteColor,
              size: 20,
            )
          ],
        )
      ],
    );
  }
}
