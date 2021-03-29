import 'package:flutter/material.dart';

import '../../demoData/demoData.dart';
import '../normalFontComponent.dart';
import '../profileIconComponent.dart';

class TalksComponent extends StatefulWidget {
  @override
  _TalksComponentState createState() => _TalksComponentState();
}

class _TalksComponentState extends State<TalksComponent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext builderContext, BoxConstraints boxConstraints) {
      double _widthFactor = boxConstraints.maxWidth / (0.9 * 350);
      return Container(
        height: 200,
        width: 280 * _widthFactor,
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
            padding: EdgeInsets.only(top: 20, left: 25 * _widthFactor, right: 25 * _widthFactor),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ProfileIconComponent(
                      true,
                      45 * _widthFactor,
                      45 * _widthFactor,
                      DemoData().faces[0],
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          NormalFontComponent(
                              DemoData().names[0], Color(0xFF000000), 16 * _widthFactor),
                          SizedBox(height: 3),
                          NormalFontComponent(
                              DemoData().status[0], Color(0xFF181818), 12 * _widthFactor),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Expanded(
                  child: NormalFontComponent(
                      DemoData().talkText, Color(0xFF181818), 12 * _widthFactor),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
