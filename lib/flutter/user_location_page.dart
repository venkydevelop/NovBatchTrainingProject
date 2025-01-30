import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class UserLocationPage extends StatefulWidget {
  const UserLocationPage({super.key});

  @override
  State<UserLocationPage> createState() => _UserLocationPageState();
}

class _UserLocationPageState extends State<UserLocationPage> {
  String _currentAddress = "UnKonown Location";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get User Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_currentAddress,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  fetchCurrentLocation();
                },
                child: const Text("Get Location"))
          ],
        ),
      ),
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
        _currentAddress =
            "Latitude: ${position.latitude} ,Longitude:${position.longitude}";
      });
      return position;
    } catch (e) {
      return null;
    }
  }
}
