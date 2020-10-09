import 'package:TimeTracker/utils/general/app_border_radius.dart';
import 'package:TimeTracker/utils/general/app_colors.dart';
import 'package:TimeTracker/utils/general/app_text_styles.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color color;
  final TextStyle style;
  final double height;
  final double width;
  const RoundedButton({
    Key key,
    this.text,
    this.onPress,
    this.color = AppColors.PrimaryGrey,
    this.style,
    this.height = 50,
    this.width = 350,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: AppBorderRadius.all(radius: AppRadius.radius15),
        child: onPress != null ? FlatButton(
          padding: EdgeInsets.zero,
          color: color,
          onPressed: onPress,
          child: Center(
            child: Text(
              text,
              style: style ?? AppTextStyle.whiteStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ) : Material(
          color: AppColors.PrimaryGrey,
          child: Center(
            child: Text(
              text,
              style: style ?? AppTextStyle.whiteStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
