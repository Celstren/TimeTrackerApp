import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class BossBottomNavigation extends StatefulWidget {
  final Function(int) onItemSelected;
  BossBottomNavigation({Key key, this.onItemSelected}) : super(key: key);

  @override
  _BossBottomNavigationState createState() => _BossBottomNavigationState();
}

class _BossBottomNavigationState extends State<BossBottomNavigation> {
  int currentNavBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        currentIndex: currentNavBarIndex,
        showUnselectedLabels: true,
        onTap: (int value) {
          setState(() {
            currentNavBarIndex = value;
          });
          if (widget.onItemSelected != null) {
            widget.onItemSelected(value);
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: AppColors.PrimaryGrey,
              ),
              activeIcon: Icon(
                Icons.person,
                size: 50,
                color: AppColors.PrimaryLightBlue,
              ),
              title: Text("Perfil", style: AppTextStyle.greyStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: AppColors.PrimaryGrey,
              ),
              activeIcon: Icon(
                Icons.home,
                size: 50,
                color: AppColors.PrimaryLightBlue,
              ),
              title: Text("Inicio", style: AppTextStyle.greyStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
                size: 30,
                color: AppColors.PrimaryGrey,
              ),
              activeIcon: Icon(
                Icons.work,
                size: 50,
                color: AppColors.PrimaryLightBlue,
              ),
              title: Text("Empresas", style: AppTextStyle.greyStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 30,
                color: AppColors.PrimaryGrey,
              ),
              activeIcon: Icon(
                Icons.people,
                size: 50,
                color: AppColors.PrimaryLightBlue,
              ),
              title: Text("Empleados", style: AppTextStyle.greyStyle())),
        ],
      ),
    );
  }
}
