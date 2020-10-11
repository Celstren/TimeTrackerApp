import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/utils/widgets/app_text_field.dart';
import 'package:TimeTracker/views/home/employee/history/widgets/history_card.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatefulWidget {
  HistoryView({Key key}) : super(key: key);

  @override
  _HistoryViewState createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {

  List<String> histories = ["", ""];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AppSeparator.VerticalSeparator30,
          AppSimpleDateTextField(
            text: "Desde",
            border: Border.all(color: AppColors.PrimaryGrey.withAlpha(210), width: 4),
            style: AppTextStyle.greyStyle(),
          ),
          AppSeparator.VerticalSeparator10,
          AppSimpleDateTextField(
            text: "Hasta",
            border: Border.all(color: AppColors.PrimaryGrey.withAlpha(210), width: 4),
            style: AppTextStyle.greyStyle(),
          ),
          AppSeparator.VerticalSeparator50,
          Column(
            children: histories.map<HistoryCard>((e) => HistoryCard()).toList(),
          ),
        ],
      ),
    );
  }
}
