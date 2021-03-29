import 'package:flutter/material.dart';

import '../components/backgroundContainerComponent.dart';
import '../components/friendBannerComponent.dart';
import '../components/normalFontComponent.dart';

class FriendsBuilder extends StatefulWidget {
  @override
  _FriendsBuilderState createState() => _FriendsBuilderState();
}

class _FriendsBuilderState extends State<FriendsBuilder> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext builderContext, BoxConstraints boxConstraints) {
      double _heightFactor = boxConstraints.maxHeight / 1024;
      double _widthFactor = boxConstraints.maxWidth / 1440;
      return Container(
        height: 875 * _heightFactor,
        width: 350 * _widthFactor,
        child: BackgroundContainerComponent(
          Color(0xFFFFFFFF),
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
                child: NormalFontComponent('FREUNDE', Color(0xFF181818), 25 * _widthFactor),
              ),
              SizedBox(height: 45 * _heightFactor),
              Padding(
                padding: EdgeInsets.only(left: 35 * _widthFactor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FriendBannerComponent(),
                    SizedBox(height: 15 * _heightFactor),
                    FriendBannerComponent(),
                    SizedBox(height: 15 * _heightFactor),
                    FriendBannerComponent(),
                    SizedBox(height: 15 * _heightFactor),
                    FriendBannerComponent(),
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
