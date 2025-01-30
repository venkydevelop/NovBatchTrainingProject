import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserLocationMapPage extends StatefulWidget {
  const UserLocationMapPage({super.key});

  @override
  State<UserLocationMapPage> createState() => _UserLocationMapPageState();
}

class _UserLocationMapPageState extends State<UserLocationMapPage> {
  LatLng? selectionLocation;
  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
    fetchCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.transparent,
            child: const Text("Location",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Colors.blue)),
          ),
          Expanded(
            child: selectionLocation != null
                ? GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: selectionLocation ?? const LatLng(17, 78),
                        zoom: 12),
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    onMapCreated: (controller) {
                      _mapController = controller;
                    },
                    onCameraMove: (CameraPosition position) {
                      print(position.target);
                    },
                    markers: selectionLocation != null
                        ? {
                            Marker(
                                markerId: const MarkerId("Current_Location"),
                                position:
                                    selectionLocation ?? const LatLng(17, 78),
                                icon: BitmapDescriptor.defaultMarker)
                          }
                        : {},
                  )
                : const Center(child: CircularProgressIndicator()),
          )
        ],
      )),
    );
  }

  Future<Position?> fetchCurrentLocation() async {
    try {
      await Geolocator.requestPermission();
      LocationPermission locationPermission =
          await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied) return null;
      final position = await Geolocator.getCurrentPosition();
      setState(() {
        selectionLocation = LatLng(position.latitude, position.longitude);
      });
      _mapController?.animateCamera(
          CameraUpdate.newLatLng(selectionLocation ?? const LatLng(17, 78)));
      return position;
    } catch (e) {
      return null;
    }
  }
}
