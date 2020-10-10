import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class EmpleadoCard extends StatelessWidget {
  const EmpleadoCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 350,
        margin: EdgeInsets.only(bottom: 20),
        child: Center(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 80,
                  width: 320,
                  decoration: BoxDecoration(
                    color: AppColors.PrimaryWhite,
                    borderRadius:
                        AppBorderRadius.all(radius: AppRadius.radius15),
                  ),
                  child: Center(
                    child: Text(
                      "Empleado",
                      style: AppTextStyle.blackStyle(),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.PrimaryLightBlue,
                    border: Border.all(
                      color: AppColors.PrimaryWhite,
                      width: 4,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "E",
                      style: AppTextStyle.whiteStyle(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
