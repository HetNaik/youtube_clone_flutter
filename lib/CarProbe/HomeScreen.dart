import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Leads'),
            actions: [
              Icon(Icons.more_vert),
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              // isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    String contactNumber = 'tel:+911234567890';
    Future<void> onCallUsPressed() async {
      print('Call us pressed');
      if (await canLaunch(contactNumber)) {
        await launch(contactNumber);
      } else {
        throw 'call not possible';
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0,
                color: Color(0x80c7c7c7))
          ]),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Lead Number: '),
                  Text('12345'),
                  Spacer(),
                  Text('23/06/2018'),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.yellow,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    // SizedBox(
                    //   width: 10.0 + 5,
                    // ),
                    Text('Customer Name: '),
                    Text('XYZ')
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: 10.0 + 5,
              //     ),
              //     Text('Address: '),
              //     // Text(
              //     //   'XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ XYZ ABD',
              //     //   // textAlign: TextAlign.justify,
              //     //   overflow: TextOverflow.fade,
              //     //   maxLines: 2,
              //     // )
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Wrap(
                  children: [
                    SizedBox(
                      width: 10.0 + 5,
                    ),
                    RichText(
                      text: new TextSpan(
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Address: '),
                          new TextSpan(
                              text:
                                  'World World World World World World World World World World World ',
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconLabelPairWidget(
                      label: "Call",
                      imageString: 'prototype.png',
                      onValueChanged: onCallUsPressed),
                  IconLabelPairWidget(
                    label: "Reschedule",
                    imageString: 'prototype.png',
                  ),
                  IconLabelPairWidget(
                    label: "Location",
                    imageString: 'prototype.png',
                  ),
                  IconLabelPairWidget(
                    label: "Resume",
                    imageString: 'prototype.png',
                  ),
                  IconLabelPairWidget(
                    label: "Cancel",
                    imageString: 'prototype.png',
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class IconLabelPairWidget extends StatefulWidget {
  final String label, imageString;
  final void Function() onValueChanged;
  const IconLabelPairWidget(
      {Key key, this.label, this.imageString, this.onValueChanged})
      : super(key: key);

  @override
  _IconLabelPairWidgetState createState() => _IconLabelPairWidgetState();
}

class _IconLabelPairWidgetState extends State<IconLabelPairWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onValueChanged();
      },
      child: Column(
        children: [
          Image.asset(
            widget.imageString,
            fit: BoxFit.fill,
            height: 20,
            width: 20,
          ),
          SizedBox(
            height: 4,
          ),
          Text(widget.label)
        ],
      ),
    );
  }
}

class Choice {
  const Choice({this.title});

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'PENDING'),
  const Choice(title: 'COMPLETED'),
];
