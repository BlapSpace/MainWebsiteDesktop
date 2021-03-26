import 'package:blap_main_website_desktop/components/profileIconComponent.dart';
import 'package:blap_main_website_desktop/components/talks/talksComponent.dart';
import 'package:flutter/material.dart';

import '../components/backgroundContainerComponent.dart';
import '../components/normalFontComponent.dart';
import '../demoData/demoData.dart';
import 'talk.dart';

class TalksBuilder extends StatefulWidget {
  @override
  _TalksBuilderState createState() => _TalksBuilderState();
}

class _TalksBuilderState extends State<TalksBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 875,
      width: 350,
      child: BackgroundContainerComponent(
        Color(0x38A0D2BA),
        BoxShadow(
          color: Color(0xFFF1F8F5),
          blurRadius: 60,
          spreadRadius: 0,
          offset: Offset(-25, 4),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: NormalFontComponent('GESPRÄCHE', Color(0xFF181818), 25),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TalksComponent(),
                  SizedBox(height: 15),
                  TalksComponent(),
                  SizedBox(height: 15),
                  TalksComponent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
