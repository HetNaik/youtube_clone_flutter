import 'dart:math';

import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/Constants/colors.dart';
import 'package:youtube_clone_flutter/Constants/constantVariables.dart';
import 'package:youtube_clone_flutter/Constants/spacers.dart';
import 'package:youtube_clone_flutter/Constants/widgets.dart';

Widget subscriptionPage = SingleChildScrollView(
  child: Column(
    children: [
      sbh10,
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sbw10,
          Expanded(
            child: Container(
              height: 90,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: channelList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Center(
                        child: Column(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.primaries[
                                Random().nextInt(Colors.primaries.length)],
                            child: Text(channelList[index][0])),
                        sbh5,
                        Text(
                          channelList[index],
                          style: TextStyle(
                              color: kSecondaryTextColor, fontSize: 10),
                        ),
                      ],
                    )),
                  );
                },
              ),
            ),
          ),
          Container(
            // height: 35,
            padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
            child: Center(
              child: Text(
                'ALL',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          sbw5,
        ],
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 35,
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: subscriptionOptionsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                  color: kPrimaryGreyColor,
                  border: Border.all(color: kBorderColor, width: 0.5),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                subscriptionOptionsList[index],
                style: TextStyle(color: kWhiteColor),
              )),
            );
          },
        ),
      ),
      VideoInstanceWidget(
        title: 'Flutter Youtube Clone',
        channel: 'Het Naik',
        views: '18K',
        span: '2 hours',
      ),
      VideoInstanceWidget(
        title: 'Flutter Youtube Clone',
        channel: 'Het Naik',
        views: '18K',
        span: '2 hours',
      ),
      VideoInstanceWidget(
        title: 'Flutter Youtube Clone',
        channel: 'Het Naik',
        views: '18K',
        span: '2 hours',
      ),
      VideoInstanceWidget(
        title: 'Flutter Youtube Clone',
        channel: 'Het Naik',
        views: '18K',
        span: '2 hours',
      ),
    ],
  ),
);
