import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:argon_flutter/constants/Theme.dart';

class Pro extends StatelessWidget {
  _launchURL() async {
    const url = '#';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/pro-background.png"),
                  fit: BoxFit.cover))),
      Padding(
        padding:
            const EdgeInsets.only(top: 73, left: 32, right: 32, bottom: 16),
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/img/logo1.png", scale: 1),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: Text.rich(TextSpan(
                          text: "Under construction",
                          style: TextStyle(color: Colors.white, fontSize: 58),
                          children: <InlineSpan>[
                            WidgetSpan(
                                child: Container(
                                    padding: EdgeInsets.all(2.0),
                                    margin: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 50.0, 50.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: Color.fromRGBO(17, 205, 239, 1)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, bottom: 0, left: 4, right: 4),
                                      child: Text("Sorry",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          )),
                                    ))),
                          ])),
                    ),
                  ],
                ),
                Text(
                    "This part will develop later",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200)),
                // SizedBox(height: 26.0),
                Row(children: <Widget>[
                  Image.asset("assets/img/logo-ios.png", scale: 2.6),
                  SizedBox(width: 30.0),
                  Image.asset("assets/img/logo-android.png", scale: 2.6)
                ]),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
