import 'package:flutter/material.dart';

import '../components/backgroundContainerComponent.dart';
import '../components/normalFontComponent.dart';
import '../components/talks/talksComponent.dart';

class TalksBuilder extends StatefulWidget {
  @override
  _TalksBuilderState createState() => _TalksBuilderState();
}

class _TalksBuilderState extends State<TalksBuilder> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext builderContext, BoxConstraints boxConstraints) {
      double _heightFactor = boxConstraints.maxHeight / 1024;
      double _widthFactor = boxConstraints.maxWidth / 1440;
      return Container(
        height: 875 * _heightFactor,
        width: 350 * _widthFactor,
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
              SizedBox(height: 45 * _heightFactor),
              Padding(
                padding: EdgeInsets.only(left: 45 * _widthFactor),
                child: NormalFontComponent('GESPRÄCHE', Color(0xFF181818), 25 * _widthFactor),
              ),
              SizedBox(height: 45 * _heightFactor),
              Padding(
                padding: EdgeInsets.only(left: 35 * _widthFactor),
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
              ),
            ],
          ),
        ),
      );
    });
  }
}
