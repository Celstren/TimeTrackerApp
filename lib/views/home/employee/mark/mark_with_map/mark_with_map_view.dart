import 'package:TimeTracker/views/home/employee/mark/widgets/mark_card.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class MarkWithMapView extends StatefulWidget {
  MarkWithMapView({Key key}) : super(key: key);

  @override
  _MarkWithMapViewState createState() => _MarkWithMapViewState();
}

class _MarkWithMapViewState extends State<MarkWithMapView> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.825,
      child: Stack(
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 350,
              height: 500,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
          ),
          Center(
            child: MarkCard(),
          ),
        ],
      ),
    );
  }
}