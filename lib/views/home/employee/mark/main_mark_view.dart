import 'package:TimeTracker/views/home/employee/mark/mark_with_map/mark_with_map_view.dart';
import 'package:TimeTracker/views/home/employee/mark/simple_mark/simple_mark_view.dart';
import 'package:flutter/material.dart';

class MainMarkView extends StatefulWidget {
  MainMarkView({Key key}) : super(key: key);

  @override
  _MainMarkViewState createState() => _MainMarkViewState();
}

class _MainMarkViewState extends State<MainMarkView> {

  bool needsGeolocation = false;

  @override
  Widget build(BuildContext context) {
    return needsGeolocation ? MarkWithMapView() : SimpleMarkView();
  }
}