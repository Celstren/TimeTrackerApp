import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class CleanFiltersButton extends StatelessWidget {
  const CleanFiltersButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.PrimaryWhite,
        borderRadius: AppBorderRadius.all(radius: AppRadius.radius25),
      ),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          print("Apply filters open");
        },
        child: Center(
          child: Text("Limpiar Filtros", style: AppTextStyle.greyStyle(),),
        ),
      ),
    );
  }
}
