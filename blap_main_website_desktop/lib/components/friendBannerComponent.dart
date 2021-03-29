import 'package:blap_main_website_desktop/demoData/demoData.dart';
import 'package:flutter/material.dart';

import 'normalFontComponent.dart';
import 'profileIconComponent.dart';

class FriendBannerComponent extends StatefulWidget {
  @override
  _FriendBannerComponentState createState() => _FriendBannerComponentState();
}

class _FriendBannerComponentState extends State<FriendBannerComponent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext builderContext, BoxConstraints boxConstraints) {
      double _widthFactor = boxConstraints.maxWidth / (0.9 * 350);
      return Container(
        width: 280 * _widthFactor,
        height: 85,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          border: Border.all(
            color: Color(0xFFA8CDBB),
          ),
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 25 * _widthFactor, right: 25 * _widthFactor),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ProfileIconComponent(
                      true,
                      45 * _widthFactor,
                      45 * _widthFactor,
                      DemoData().faces[3],
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          NormalFontComponent(
                              DemoData().names[0], Color(0xFF000000), 16),
                          SizedBox(height: 3),
                          NormalFontComponent(
                              DemoData().status[0], Color(0xFF181818), 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
