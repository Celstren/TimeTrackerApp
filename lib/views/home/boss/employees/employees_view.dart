import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/views/home/boss/companies/widgets/apply_filters_button.dart';
import 'package:TimeTracker/views/home/boss/companies/widgets/clean_filters_button.dart';
import 'package:TimeTracker/views/home/boss/employees/widgets/employee_card.dart';
import 'package:flutter/material.dart';

class EmployeesView extends StatefulWidget {
  EmployeesView({Key key}) : super(key: key);

  @override
  _EmployeesViewState createState() => _EmployeesViewState();
}

class _EmployeesViewState extends State<EmployeesView> {

  List<String> cards = ["", "", ""];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          AppSeparator.VerticalSeparator30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ApplyFiltersButton(),
              CleanFiltersButton(),
            ],
          ),
          AppSeparator.VerticalSeparator30,
          Column(
            children: cards.map<EmpleadoCard>((e) => EmpleadoCard()).toList(),
          ),
        ],
      );
  }
}
