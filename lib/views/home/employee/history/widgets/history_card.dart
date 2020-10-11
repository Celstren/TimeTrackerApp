import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatefulWidget {
  HistoryCard({Key key}) : super(key: key);

  @override
  _HistoryCardState createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 350,
      margin: EdgeInsets.only(bottom: 30),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 180,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.all(radius: AppRadius.radius20),
                color: AppColors.PrimaryWhite,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildSection("Fecha", "20/11/2020"),
                  AppSeparator.VerticalSeparator10,
                  _buildSection("Entrada", "09:00 am"),
                  AppSeparator.VerticalSeparator10,
                  _buildSection("Salida", "06:00 pm"),
                  AppSeparator.VerticalSeparator10,
                  _buildSection("Tiempo de descanso", "1 hora"),
                  AppSeparator.VerticalSeparator10,
                  _buildSection("Tiempo trabajado", "8 horas"),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 240,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: AppBorderRadius.all(radius: AppRadius.radius10),
                  border: Border.all(
                    color: AppColors.PrimaryWhite,
                    width: 2,
                  ),
                  color: AppColors.PrimaryGreen),
              child: Center(
                child: Text(
                  "A tiempo",
                  style: AppTextStyle.whiteStyle(
                    fontSize: AppFontSizes.subitle16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
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
            style: AppTextStyle.greenStyle(
              fontSize: AppFontSizes.text12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          value,
          style: AppTextStyle.greenStyle(
            fontSize: AppFontSizes.text12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
