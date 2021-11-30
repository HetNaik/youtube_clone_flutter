import 'dart:math';

import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/Constants/colors.dart';
import 'package:youtube_clone_flutter/Constants/constantVariables.dart';
import 'package:youtube_clone_flutter/Constants/spacers.dart';
import 'package:youtube_clone_flutter/Constants/widgets.dart';
import 'package:youtube_clone_flutter/Screens/libraryScreen.dart';
import 'package:youtube_clone_flutter/Screens/subscriptionScreen.dart';
import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = homePage;
        break;
      // case 1:
      //   child = FlutterLogo(colors: Colors.orange);
      //   break;
      // case 2:
      //   child = FlutterLogo(colors: Colors.red);
      //   break;
      case 3:
        child = subscriptionPage;
        break;
      case 4:
        child = libraryPage;
        break;
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kAppBackgroundColor,
        appBar: kAppBar,
        body: SizedBox.expand(
            child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'earth.gif',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 140,
              )
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newIndex) => setState(() {
            _index = newIndex;
            print(_index);
          }),
          currentIndex: _index,
          backgroundColor: kAppBackgroundColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: kPrimaryTextColor),
                // label: 'Home',
                title: Text(
                  'Home',
                  style: TextStyle(color: kSecondaryTextColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.fireplace, color: kPrimaryTextColor),
                // label: 'Home',
                title: Text(
                  'Shorts',
                  style: TextStyle(color: kSecondaryTextColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.add, color: kPrimaryTextColor),
                // label: 'Home',
                title: Text(
                  'Add',
                  style: TextStyle(color: kSecondaryTextColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions, color: kPrimaryTextColor),
                // label: 'Home',
                title: Text(
                  'Subscriptions',
                  style: TextStyle(color: kSecondaryTextColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add, color: kPrimaryTextColor),
                // label: 'Home',
                title: Text(
                  'Library',
                  style: TextStyle(color: kSecondaryTextColor),
                )),
          ],
        ),
      ),
    );
  }
}

Widget homePage = SingleChildScrollView(
  child: Column(
    children: [
      sbh10,
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sbw10,
          Container(
              height: 35,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              color: kPrimaryGreyColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.explore,
                    color: kWhiteColor,
                  ),
                  sbw5,
                  Text(
                    'Explore',
                    style: TextStyle(color: kWhiteColor),
                  ),
                ],
              )),
          sbw5,
          Text(
            '|',
            style: TextStyle(color: kPrimaryGreyColor, fontSize: 35),
          ),
          sbw5,
          Expanded(
            child: Container(
              height: 35,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: exploreList.length,
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
                      exploreList[index],
                      style: TextStyle(color: kWhiteColor),
                    )),
                  );
                },
              ),
            ),
          )
        ],
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
