import 'package:TimeTracker/utils/exports/app_design.dart';
import 'package:TimeTracker/utils/widgets/app_bottom_navigations.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  @required
  final Widget body;
  final bool scrollable;
  final Function onBack;
  final bool showBottomNavBar;
  final Widget floatingButton;
  AppScaffold(
      {Key key,
      this.body,
      this.scrollable = true,
      this.onBack,
      this.showBottomNavBar = false,
      this.floatingButton,
      })
      : assert(body != null, "Body can't be null"),
        super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.PrimaryBlue,
        body: Stack(
          children: <Widget>[
            widget.scrollable
                ? SingleChildScrollView(
                    child: widget.body,
                  )
                : widget.body,
            widget.onBack != null
                ? Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 30),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: widget.onBack,
                            child: Icon(
                              Icons.arrow_back,
                              size: 40,
                              color: AppColors.PrimaryWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : SizedBox()
          ],
        ),
        floatingActionButton: widget.floatingButton,
        bottomNavigationBar: widget.showBottomNavBar
            ? BossBottomNavigation()
            : null,
      ),
    );
  }
}
