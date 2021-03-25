import 'package:blap_main_website_desktop/components/normalFontComponent.dart';
import 'package:blap_main_website_desktop/demoData/demoData.dart';
import 'package:flutter/material.dart';

import '../profileIconComponent.dart';

class TalksComponent extends StatefulWidget {
  @override
  _TalksComponentState createState() => _TalksComponentState();
}

class _TalksComponentState extends State<TalksComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 240,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        boxShadow: [
          BoxShadow(
            color: Color(0x46648A77),
            blurRadius: 20,
            spreadRadius: 0,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ProfileIconComponent(
                    true,
                    60,
                    60,
                    DemoData().talks[0],
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        NormalFontComponent(
                            DemoData().names[0], Color(0xFF181818), 25),
                        SizedBox(height: 3),
                        NormalFontComponent(
                            DemoData().status[0], Color(0xFF181818), 12),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23),
              Expanded(
                child: NormalFontComponent(
                    DemoData().talkText, Color(0xFF181818), 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
