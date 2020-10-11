import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/views/home/boss/companies/widgets/apply_filters_button.dart';
import 'package:TimeTracker/views/home/boss/companies/widgets/clean_filters_button.dart';
import 'package:TimeTracker/views/home/boss/companies/widgets/company_card.dart';
import 'package:flutter/material.dart';

class CompaniesView extends StatefulWidget {
  CompaniesView({Key key}) : super(key: key);

  @override
  _CompaniesViewState createState() => _CompaniesViewState();
}

class _CompaniesViewState extends State<CompaniesView> {

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
            children: cards.map<CompanyCard>((e) => CompanyCard()).toList(),
          ),
        ],
      );
  }
}
