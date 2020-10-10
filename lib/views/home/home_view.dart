import 'package:TimeTracker/utils/widgets/app_bottom_navigations.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
import 'package:TimeTracker/views/home/companies/companies_view.dart';
import 'package:TimeTracker/views/home/companies/widgets/add_company_button.dart';
import 'package:TimeTracker/views/home/stadistics/stadistics_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Widget view = StadisticsView();

  void changeView(int index) {
    setState(() {
      switch(index) {
        case 1: view = StadisticsView(); break;
        case 2: view = CompaniesView(); break;
        default: view = StadisticsView(); break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: view,
      ),
      bottomNav: BossBottomNavigation(onItemSelected: changeView),
      floatingButton: view is CompaniesView ? AddCompanyButton() : null,
    );
  }
}