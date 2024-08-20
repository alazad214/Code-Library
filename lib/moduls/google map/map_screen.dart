import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.77483, -122.41942),
          zoom: 12,

        ),
      ),
    );
  }
}
