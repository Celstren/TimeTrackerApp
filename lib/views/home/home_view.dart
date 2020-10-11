import 'package:TimeTracker/local_db/shared_preference/preferences.dart';
import 'package:TimeTracker/utils/widgets/app_bottom_navigations.dart';
import 'package:TimeTracker/utils/widgets/app_scaffold.dart';
import 'package:TimeTracker/views/home/boss/companies/companies_view.dart';
import 'package:TimeTracker/views/home/boss/companies/widgets/add_company_button.dart';
import 'package:TimeTracker/views/home/boss/employees/employees_view.dart';
import 'package:TimeTracker/views/home/boss/employees/widgets/add_employee_button.dart';
import 'package:TimeTracker/views/home/boss/boss_profile/boss_profile_view.dart';
import 'package:TimeTracker/utils/widgets/logout_button.dart';
import 'package:TimeTracker/views/home/boss/stadistics/stadistics_view.dart';
import 'package:TimeTracker/views/home/employee/history/history_view.dart';
import 'package:TimeTracker/views/home/employee/mark/main_mark_view.dart';
import 'package:TimeTracker/views/home/employee/profile/employee_profile_view.dart';
import 'package:TimeTracker/views/home/employee/schedule/schedule_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget view = StadisticsView();

  @override
  void initState() {
    view = Preferences.user.userType == 0 ? StadisticsView() : MainMarkView();
    super.initState();
  }

  void changeBossView(int index) {
    setState(() {
      switch (index) {
        case 0:
          view = BossProfileView();
          break;
        case 1:
          view = StadisticsView();
          break;
        case 2:
          view = CompaniesView();
          break;
        case 3:
          view = EmployeesView();
          break;
        default:
          view = StadisticsView();
          break;
      }
    });
  }

  void changeEmployeeView(int index) {
    setState(() {
      switch (index) {
        case 0:
          view = EmployeeProfileView();
          break;
        case 1:
          view = MainMarkView();
          break;
        case 2:
          view = HistoryView();
          break;
        case 3:
          view = ScheduleView();
          break;
        default:
          view = StadisticsView();
          break;
      }
    });
  }

  Widget get bossFloatingButton {
    if (view is CompaniesView) {
      return AddCompanyButton();
    } else if (view is EmployeesView) {
      return AddEmployeeButton();
    } else if (view is BossProfileView) {
      return LogoutButton();
    }
    return null;
  }

  Widget get employeeFloatingButton {
    if (view is EmployeeProfileView) {
      return LogoutButton();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  Widget _buildScaffold() {
    if (Preferences.user.userType == 0) {
      return AppScaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: view,
        ),
        bottomNav: BossBottomNavigation(onItemSelected: changeBossView),
        floatingButton: bossFloatingButton,
      );
    } else {
      return AppScaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: view,
        ),
        bottomNav: EmployeeBottomNavigation(onItemSelected: changeEmployeeView),
        floatingButton: employeeFloatingButton,
      );
    }
  }
}
