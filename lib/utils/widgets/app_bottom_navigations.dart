import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class BossBottomNavigation extends StatefulWidget {
  BossBottomNavigation({Key key}) : super(key: key);

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
                  },
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: 50,
                        color: AppColors.LinkBlue,
                      ),
                      title: Text("Perfil", style: AppTextStyle.greyStyle())
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: 50,
                        color: AppColors.LinkBlue,
                      ),
                      title: Text("Inicio", style: AppTextStyle.greyStyle())
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.work,
                        size: 50,
                        color: AppColors.LinkBlue,
                      ),
                      title: Text("Empresas", style: AppTextStyle.greyStyle())
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.people,
                        size: 50,
                        color: AppColors.LinkBlue,
                      ),
                      title: Text("Empleados", style: AppTextStyle.greyStyle())
                    ),
                  ],
                ),
    );
  }
}