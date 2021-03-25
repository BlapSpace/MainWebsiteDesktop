import 'package:flutter/material.dart';

class BackgroundContainerComponent extends StatefulWidget {
  final Color _color;
  final BoxShadow _boxShadow;
  final Widget _child;
  const BackgroundContainerComponent(this._color, this._boxShadow, this._child);
  @override
  _BackgroundContainerComponentState createState() =>
      _BackgroundContainerComponentState(_color, _boxShadow, _child);
}

class _BackgroundContainerComponentState
    extends State<BackgroundContainerComponent> {
  final Color _color;
  final BoxShadow _boxShadow;
  final Widget _child;
  _BackgroundContainerComponentState(this._color, this._boxShadow, this._child);
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
      child: _child,
    );
  }
}
