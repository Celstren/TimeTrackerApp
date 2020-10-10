import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
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
    return AppScaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AppSeparator.VerticalSeparator60,
            SizedBox(
              height: 180,
              width: 180,
              child: Placeholder(),
            ),
            AppSeparator.VerticalSeparator20,
            Text(
              "Horas trabajadas en la semana",
              style: AppTextStyle.whiteStyle(),
            ),
            AppSeparator.VerticalSeparator20,
            SizedBox(
              height: 180,
              width: 180,
              child: Placeholder(),
            ),
            AppSeparator.VerticalSeparator20,
            Text(
              "Relación de empleados sema",
              style: AppTextStyle.whiteStyle(),
            ),
          ],
        ),
      ),
      showBottomNavBar: true,
    );
  }
}
