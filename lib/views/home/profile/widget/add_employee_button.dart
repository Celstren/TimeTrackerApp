import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final Function onAdd;
  const LogoutButton({Key key, this.onAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onAdd,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.PrimaryRed,
          ),
          child: Center(
            child: Icon(
              Icons.exit_to_app,
              size: 40,
              color: AppColors.PrimaryWhite,
            ),
          ),
        ),
      );
  }
}