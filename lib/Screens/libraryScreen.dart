import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/Constants/colors.dart';
import 'package:youtube_clone_flutter/Constants/constantVariables.dart';
import 'package:youtube_clone_flutter/Constants/spacers.dart';
import 'package:youtube_clone_flutter/Constants/widgets.dart';

Widget libraryPage = SingleChildScrollView(
  child: Column(
    children: [
      sbh10,
      ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: libraryList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20, right: 15, left: 15),
            child: Row(
              children: [
                Row(
                  children: [
                    libraryList[index].icon,
                    sbw15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          libraryList[index].title,
                          style: TextStyle(color: kWhiteColor),
                        ),
                        Text(
                          libraryList[index].subtitle,
                          style: TextStyle(color: kVideoSubtitleColor),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                libraryList[index].title == 'Downloads'
                    ? Icon(
                        Icons.download_done_rounded,
                        color: kWhiteColor,
                      )
                    : Container()
              ],
            ),
          );
        },
      ),
      Divider(
        color: Colors.grey,
        thickness: 1,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Playlists',
                  style: TextStyle(color: kWhiteColor),
                ),
                Row(
                  children: [
                    Text(
                      'Recently added',
                      style: TextStyle(color: kWhiteColor),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: kWhiteColor,
                    )
                  ],
                )
              ],
            ),
            sbh15,
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                sbw15,
                Text(
                  'New playlist',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            sbh20,
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  color: kWhiteColor,
                ),
                sbw15,
                Column(
                  children: [
                    Text(
                      'Liked Videos',
                      style: TextStyle(color: kWhiteColor),
                    ),
                    Text(
                      '287 videos',
                      style: TextStyle(color: kVideoSubtitleColor),
                    ),
                  ],
                ),
              ],
            ),
            sbh20,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: playlistList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: index < playlistList.length - 1
                      ? EdgeInsets.only(bottom: 20)
                      : EdgeInsets.zero,
                  child: Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: playlistList[index].image),
                      sbw15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            playlistList[index].title,
                            style: TextStyle(color: kWhiteColor),
                          ),
                          Text(
                            playlistList[index].videos + ' videos',
                            style: TextStyle(color: kVideoSubtitleColor),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      )
    ],
  ),
);
