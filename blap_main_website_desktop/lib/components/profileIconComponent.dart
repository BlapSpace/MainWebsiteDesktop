import 'package:flutter/material.dart';

class ProfileIconComponent extends StatefulWidget {
  final bool _online;
  final double _width;
  final double _height;
  final String _profileImageURL;
  const ProfileIconComponent(
      this._online, this._height, this._width, this._profileImageURL);
  @override
  _ProfileIconComponentState createState() =>
      _ProfileIconComponentState(_online, _height, _width, _profileImageURL);
}

class _ProfileIconComponentState extends State<ProfileIconComponent> {
  final bool _online;
  final double _width;
  final double _height;
  final String _profileImageURL;
  _ProfileIconComponentState(
      this._online, this._height, this._width, this._profileImageURL);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: _width * 1.15,
          height: _height * 1.15,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: _online == true ? Color(0xFF9EF01A) : Color(0xFFC73939),
          ),
        ),
        Container(
          width: _width,
          height: _height,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(_profileImageURL),
            ),
          ),
        ),
      ],
    );
  }
}
