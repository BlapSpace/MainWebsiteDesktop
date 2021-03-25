import 'package:flutter/material.dart';

class BackgroundContainerComponent extends StatefulWidget {
  Color _color;
  BoxShadow _boxShadow;
  BackgroundContainerComponent(this._color, this._boxShadow);
  @override
  _BackgroundContainerComponentState createState() =>
      _BackgroundContainerComponentState(_color, _boxShadow);
}

class _BackgroundContainerComponentState
    extends State<BackgroundContainerComponent> {
  Color _color;
  BoxShadow _boxShadow;
  _BackgroundContainerComponentState(this._color, this._boxShadow);
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
