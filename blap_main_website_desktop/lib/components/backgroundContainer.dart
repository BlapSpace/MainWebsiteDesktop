import 'package:flutter/material.dart';

class BackgroundContainer extends StatefulWidget {
  Color _color;
  BoxShadow _boxShadow;
  BackgroundContainer(this._color, this._boxShadow);
  @override
  _BackgroundContainerState createState() =>
      _BackgroundContainerState(_color, _boxShadow);
}

class _BackgroundContainerState extends State<BackgroundContainer> {
  Color _color;
  BoxShadow _boxShadow;
  _BackgroundContainerState(this._color, this._boxShadow);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        boxShadow: [_boxShadow],
      ),
    );
  }
}
