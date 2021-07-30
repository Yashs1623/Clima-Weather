import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  // Location({this.latitude, this.longitude});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.medium);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
      //where e is a exception....if the upper part fails then catch the exception
    }
  }
}
