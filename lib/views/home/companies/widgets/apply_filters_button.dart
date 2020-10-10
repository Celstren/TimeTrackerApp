import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class ApplyFiltersButton extends StatelessWidget {
  const ApplyFiltersButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.PrimaryWhite,
        borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
      ),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          print("Apply filters open");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.filter_b_and_w),
            Text("Aplicar Filtros", style: AppTextStyle.lightBlueStyle(),)
          ],
        ),
      ),
    );
  }
}
