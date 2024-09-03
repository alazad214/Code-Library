import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
   MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('google map'),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationButtonEnabled: false,
        initialCameraPosition: CameraPosition(
          target: LatLng(23.768263693519593, 90.42634809665722),
          zoom: 12,
        ),
      ),
    );
  }
}
