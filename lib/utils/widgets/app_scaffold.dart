import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  @required final Widget body;
  final bool scrollable;
  AppScaffold({Key key, this.body, this.scrollable = true}) : assert(body != null, "Body can't be null"), super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         backgroundColor: AppColors.PrimaryBlue,
         body: widget.scrollable ? SingleChildScrollView(
           child: widget.body,
         ) : widget.body,
       ),
    );
  }
}