import 'package:flutter/cupertino.dart';

class BottonNavModel{
  Widget _screen;

  BottonNavModel(this._screen);

  Widget get screen => _screen;

  set screen(Widget value) {
    _screen = value;
  }
}
