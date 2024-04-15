import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MyAppState();
}

class _MyAppState extends State<Map> {
  late GoogleMapController mapController;

  LatLng _center = const LatLng(35.2938, -93.1361);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 17.0,
          ),
          markers: {
            const Marker(
              markerId: MarkerId('User'),
              position: LatLng(35.2938, -93.1361)
            )
          },
        ),
    );
  }
}
