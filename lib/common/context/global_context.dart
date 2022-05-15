import 'package:flutter/material.dart';

class GlobalContextHelper{
  /*
    This class provide a GlobalKey to the App Navigator, with this you can recover the global context
  */
  final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  GlobalContextHelper();

  GlobalKey<NavigatorState> get key => _key;
  BuildContext? get context => _key.currentContext;
}