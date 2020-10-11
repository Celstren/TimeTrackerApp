import 'package:TimeTracker/views/home/employee/mark/widgets/mark_card.dart';
import 'package:flutter/material.dart';

class MarkWithMapView extends StatefulWidget {
  MarkWithMapView({Key key}) : super(key: key);

  @override
  _MarkWithMapViewState createState() => _MarkWithMapViewState();
}

class _MarkWithMapViewState extends State<MarkWithMapView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.825,
      child: Stack(
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 350,
              height: 500,
              child: Placeholder(),
            ),
          ),
          Center(
            child: MarkCard(),
          ),
        ],
      ),
    );
  }
}
