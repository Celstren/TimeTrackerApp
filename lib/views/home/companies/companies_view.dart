import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
import 'package:TimeTracker/views/home/companies/widgets/apply_filters_button.dart';
import 'package:TimeTracker/views/home/companies/widgets/clean_filters_button.dart';
import 'package:TimeTracker/views/home/companies/widgets/company_card.dart';
import 'package:flutter/material.dart';

class CompaniesView extends StatefulWidget {
  CompaniesView({Key key}) : super(key: key);

  @override
  _CompaniesViewState createState() => _CompaniesViewState();
}

class _CompaniesViewState extends State<CompaniesView> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ApplyFiltersButton(),
              CleanFiltersButton(),
            ],
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => CompanyCard(),
          ),
        ],
      ),
      showBottomNavBar: true,
      floatingButton: FloatingActionButton(
        onPressed: () {
          print("Add");
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.PrimaryGreen,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              size: 40,
              color: AppColors.PrimaryWhite,
            ),
          ),
        ),
      ),
    );
  }
}
