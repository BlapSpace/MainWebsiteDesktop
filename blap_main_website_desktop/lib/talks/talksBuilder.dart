import 'package:flutter/material.dart';

import '../components/backgroundContainerComponent.dart';
import '../components/normalFontComponent.dart';
import 'talk.dart';

class TalksBuilder extends StatefulWidget {
  @override
  _TalksBuilderState createState() => _TalksBuilderState();
}

class _TalksBuilderState extends State<TalksBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: 300,
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
              padding: EdgeInsets.only(left: 55),
              child: NormalFontComponent('GESPRÄCHE', Color(0xFF181818), 25),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TalkWidget(),
                  SizedBox(height: 10),
                  TalkWidget(),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
