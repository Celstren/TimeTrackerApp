import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:flutter/material.dart';

class MarkCard extends StatefulWidget {
  MarkCard({Key key}) : super(key: key);

  @override
  _MarkCardState createState() => _MarkCardState();
}

class _MarkCardState extends State<MarkCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 200,
            width: 280,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          AppBorderRadius.all(radius: AppRadius.radius20),
                          color: AppColors.PrimaryWhite,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "08:32:25 am",
                          style: AppTextStyle.greenStyle(
                            fontSize: AppFontSizes.subitle24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppSeparator.VerticalSeparator40,
                        Text(
                          "Inicio 08:30:00 am",
                          style: AppTextStyle.blackStyle(
                            fontSize: AppFontSizes.text12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppSeparator.VerticalSeparator20,
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius:
                            AppBorderRadius.all(radius: AppRadius.radius15),
                        border: Border.all(
                          color: AppColors.PrimaryWhite,
                          width: 2,
                        ),
                        color: AppColors.PrimaryLightGrey),
                    child: Center(
                      child: Text(
                        "Marcar",
                        style: AppTextStyle.whiteStyle(
                            fontSize: AppFontSizes.subitle16,
                            fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
