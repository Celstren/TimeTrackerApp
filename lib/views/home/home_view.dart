import 'package:TimeTracker/utils/widgets/app_bottom_navigations.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
import 'package:TimeTracker/views/home/companies/companies_view.dart';
import 'package:TimeTracker/views/home/companies/widgets/add_company_button.dart';
import 'package:TimeTracker/views/home/employees/employees_view.dart';
import 'package:TimeTracker/views/home/employees/widgets/add_employee_button.dart';
import 'package:TimeTracker/views/home/profile/profile_view.dart';
import 'package:TimeTracker/views/home/profile/widget/add_employee_button.dart';
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
        case 0: view = ProfileView(); break;
        case 1: view = StadisticsView(); break;
        case 2: view = CompaniesView(); break;
        case 3: view = EmployeesView(); break;
        default: view = StadisticsView(); break;
      }
    });
  }

  Widget get floatingButton {
    if (view is CompaniesView) {
      return AddCompanyButton();
    } else if (view is EmployeesView) {
      return AddEmployeeButton();
    } else if (view is ProfileView) {
      return LogoutButton();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: view,
      ),
      bottomNav: BossBottomNavigation(onItemSelected: changeView),
      floatingButton: floatingButton,
    );
  }
}