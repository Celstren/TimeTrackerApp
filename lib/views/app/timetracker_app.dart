import 'package:TimeTracker/local_db/shared_preference/preferences.dart';
import 'package:TimeTracker/views/authentication/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TimeTrackerApp extends StatefulWidget {
  TimeTrackerApp({Key key}) : super(key: key);

  @override
  _TimeTrackerAppState createState() => _TimeTrackerAppState();
}

class _TimeTrackerAppState extends State<TimeTrackerApp> {
  Widget view = Scaffold();

  @override
  void initState() {
    initializeConfig();
    super.initState();
  }

  void initializeConfig() async {
    await Preferences.initPrefs();
    if (mounted) {
      setState(() {
        view = LoginView();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: "TimeTracker",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: view,
      ),
    );
  }
}
