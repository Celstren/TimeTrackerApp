import 'package:TimeTracker/utils/widgets/app_separators.dart';
import 'package:TimeTracker/utils/widgets/circular_avatar.dart';
import 'package:TimeTracker/views/home/employee/mark/widgets/mark_card.dart';
import 'package:flutter/material.dart';

class SimpleMarkView extends StatefulWidget {
  SimpleMarkView({Key key}) : super(key: key);

  @override
  _SimpleMarkViewState createState() => _SimpleMarkViewState();
}

class _SimpleMarkViewState extends State<SimpleMarkView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AppSeparator.VerticalSeparator60,
          CircularAvatar(
            size: 150,
            initialName: "G",
          ),
          AppSeparator.VerticalSeparator60,
          MarkCard(),
        ],
      ),
    );
  }
}
