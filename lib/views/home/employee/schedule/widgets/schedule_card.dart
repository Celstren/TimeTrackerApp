import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 320,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.all(radius: AppRadius.radius25),
        border: Border.all(color: AppColors.PrimaryWhite, width: 3),
        color: AppColors.PrimaryGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildSection("Ingreso:", "09:30 am"),
          AppSeparator.VerticalSeparator10,
          _buildSection("Salida:", "06:00 pm"),
          AppSeparator.VerticalSeparator10,
          _buildSection("Tolerancia de tiempo:", "15 minutos"),
          AppSeparator.VerticalSeparator10,
          _buildSection("Tolerancia de salida:", "0 minutos"),
        ],
      ),
    );
  }

  Widget _buildSection(String label, String value) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 180,
          child: Text(
            label,
            style: AppTextStyle.whiteStyle(
              fontSize: AppFontSizes.text12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          value,
          style: AppTextStyle.whiteStyle(
            fontSize: AppFontSizes.text12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
