import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_bar_chart.dart';
import 'package:TimeTracker/utils/widgets/app_pie_chart.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:flutter/material.dart';

class StadisticsView extends StatefulWidget {
  StadisticsView({Key key}) : super(key: key);

  @override
  _StadisticsViewState createState() => _StadisticsViewState();
}

class _StadisticsViewState extends State<StadisticsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AppSeparator.VerticalSeparator40,
            SizedBox(
              height: 300,
              width: 300,
              child: BarChartSample1(),
            ),
            AppSeparator.VerticalSeparator20,
            Text(
              "Horas trabajadas en la semana",
              style: AppTextStyle.whiteStyle(),
            ),
            AppSeparator.VerticalSeparator20,
            SizedBox(
              height: 300,
              width: 300,
              child: PieChartSample1(),
            ),
            AppSeparator.VerticalSeparator20,
            Text(
              "Relación de empleados semana",
              style: AppTextStyle.whiteStyle(),
            ),
            AppSeparator.VerticalSeparator40,
          ],
        );
  }
}
