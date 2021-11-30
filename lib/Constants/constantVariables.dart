import 'package:flutter/material.dart';

import 'colors.dart';

List<String> exploreList = [
  'All',
  'Live',
  'Flutter',
  'Brooklyn Nine Nine',
  'Cricket',
  'Standup Comedy'
];

class LibraryModal {
  String title, subtitle;
  Icon icon;
  LibraryModal({this.title, this.subtitle, this.icon});
}

class PlaylistModal {
  String title, videos;
  Image image;
  PlaylistModal({this.title, this.videos, this.image});
}

List<LibraryModal> libraryList = [
  LibraryModal(
      title: 'History',
      subtitle: 'History Paused',
      icon: Icon(Icons.history, color: kWhiteColor)),
  LibraryModal(
      title: 'Your Videos',
      subtitle: '3 Videos',
      icon: Icon(Icons.video_collection, color: kWhiteColor)),
  LibraryModal(
      title: 'Downloads',
      subtitle: '27 videos',
      icon: Icon(Icons.download_sharp, color: kWhiteColor)),
  LibraryModal(
      title: 'Your movies',
      subtitle: '2 movies',
      icon: Icon(Icons.movie, color: kWhiteColor)),
  LibraryModal(
      title: 'Watch Later',
      subtitle: '40 unwatched videos',
      icon: Icon(Icons.watch_later, color: kWhiteColor)),
  LibraryModal(
      title: 'Clips',
      subtitle: '2 clips',
      icon: Icon(Icons.cut, color: kWhiteColor)),
];

List<PlaylistModal> playlistList = [
  PlaylistModal(
      title: 'Stand-Up',
      videos: '26',
      image: Image.asset(
        'prototype.png',
        height: 20,
        width: 20,
        fit: BoxFit.scaleDown,
      )),
  PlaylistModal(
      title: 'Flutter',
      videos: '228',
      image: Image.asset('prototype.png', fit: BoxFit.scaleDown)),
  PlaylistModal(
      title: 'Food',
      videos: '64',
      image: Image.asset('prototype.png', fit: BoxFit.scaleDown)),
  PlaylistModal(
      title: 'AI/ML',
      videos: '23',
      image: Image.asset('prototype.png', fit: BoxFit.scaleDown)),
  PlaylistModal(
      title: 'Songs',
      videos: '78',
      image: Image.asset('prototype.png', fit: BoxFit.scaleDown)),
];

List<String> channelList = [
  'Google Dev',
  'Fireship',
  'Het Naik',
  'Tanmay Bhat',
  'Flying Beast',
  'BB ki Wines',
];

List<String> subscriptionOptionsList = [
  'All',
  'Today',
  'Continue Watching',
  'Unwatched'
];
