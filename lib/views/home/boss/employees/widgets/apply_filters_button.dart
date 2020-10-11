import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class ApplyFiltersButton extends StatelessWidget {
  const ApplyFiltersButton({Key key}) : super(key: key);

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.filter_b_and_w, size: 30, color: AppColors.PrimaryLightBlue),
            Text("Aplicar Filtros", style: AppTextStyle.lightBlueStyle(),)
          ],
        ),
      ),
    );
  }
}
