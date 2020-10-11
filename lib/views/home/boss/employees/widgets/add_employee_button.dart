import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class AddEmployeeButton extends StatelessWidget {
  final Function onAdd;
  const AddEmployeeButton({Key key, this.onAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onAdd,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.PrimaryGreen,
          ),
          child: Center(
            child: Icon(
              Icons.add,
              size: 40,
              color: AppColors.PrimaryWhite,
            ),
          ),
        ),
      );
  }
}