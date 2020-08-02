import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class GeoLocation extends StatefulWidget {
  @override
  _GeoLocationState createState() => _GeoLocationState();
}

class _GeoLocationState extends State<GeoLocation> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Position>(
        future: Geolocator()
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.high),
        builder: (context, AsyncSnapshot<Position> snapshot) {
          if (snapshot.hasData) {
            return Text('Your location is: ' + snapshot.data.toString());
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
