import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/views/home/employee/schedule/widgets/schedule_card.dart';
import 'package:flutter/material.dart';

class ScheduleView extends StatefulWidget {
  ScheduleView({Key key}) : super(key: key);

  @override
  _ScheduleViewState createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {

  List<String> schedules = ["", ""];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AppSeparator.VerticalSeparator40,
          SizedBox(
            height: 300,
            width: 350,
            child: Placeholder(),
          ),
          AppSeparator.VerticalSeparator20,
          Column(
            children: schedules.map<ScheduleCard>((e) => ScheduleCard()).toList(),
          ),
        ],
      ),    
    );
  }
}