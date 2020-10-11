import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/utils/widgets/overview_field.dart';
import 'package:flutter/material.dart';

class EmployeeProfileView extends StatefulWidget {
  EmployeeProfileView({Key key}) : super(key: key);

  @override
  _EmployeeProfileViewState createState() => _EmployeeProfileViewState();
}

class _EmployeeProfileViewState extends State<EmployeeProfileView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            AppSeparator.VerticalSeparator100,
            Container(
              height: MediaQuery.of(context).size.height * .697,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius:
                    AppBorderRadius.onlyTop(topRadius: AppRadius.radius30),
                color: AppColors.PrimaryWhite,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppSeparator.VerticalSeparator50,
                    OverviewField(
                      label: "Nombre Completo",
                      text: "Gustavo Alexander Carrillo Rueda",
                      width: 350,
                    ),
                    AppSeparator.VerticalSeparator20,
                    OverviewField(
                      label: "Email",
                      text: "abc@xyz.com",
                    ),
                    AppSeparator.VerticalSeparator20,
                    OverviewField(
                      label: "Celular",
                      text: "+51999999999",
                    ),
                    AppSeparator.VerticalSeparator20,
                    OverviewField(
                      label: "Empresas",
                      text: "SoftwareDev",
                    ),
                    AppSeparator.VerticalSeparator20,
                    OverviewField(
                      label: "Doc. de Identidad",
                      text: "875845784",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.only(right: 30, top: 30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.PrimaryWhite, width: 8),
                color: AppColors.PrimaryLightBlue,
              ),
              child: Center(
                child: Text(
                  "P",
                  style: AppTextStyle.whiteStyle(
                    fontSize: AppFontSizes.title36,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
