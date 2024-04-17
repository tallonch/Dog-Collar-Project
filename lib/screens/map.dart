import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CollarMap extends StatefulWidget {
  const CollarMap({super.key});

  @override
  State<CollarMap> createState() => _MapState();
}

class _MapState extends State<CollarMap> {
  final Completer<GoogleMapController> _mapController = Completer();
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  //late GoogleMapController mapController;

  @override
  void initState() {
    //addCustomIcon();
    super.initState();
  }

  void addCustomIcon() async {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration(size: Size(20, 20)), "assets/profile-image.png")
        .then(
          (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(35.2938, -93.1361),
    zoom: 17.5,
  );

  LatLng _center = const LatLng(35.2938, -93.1361);
  LatLng _collar1 = const LatLng(35.2938, -93.1371);

  //void _onMapCreated(GoogleMapController controller) {
  //  mapController = controller;
  //}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          myLocationButtonEnabled: true,
          initialCameraPosition: _cameraPosition,
          onMapCreated: (GoogleMapController controller) {
            _mapController.complete(controller);
          },
          markers: {
            Marker(
              markerId: MarkerId("user"),
              position: _center,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),

            ),
            Marker(
              markerId: MarkerId("collar1"),
              position: _collar1,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
            ),
          },
        ),
    );
  }
}
