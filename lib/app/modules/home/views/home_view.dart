import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tutor/app/modules/initial/views/initial_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        List<Polyline> myPolyline = [];

        void createPolyline() {
          myPolyline.add(
            const Polyline(
              polylineId: PolylineId("1"),
              color: Colors.red,
              width: 5,
              points: [
                LatLng(30.427755, -9.598107),
                LatLng(34.020882, -6.841650)
              ],
            ),
          );
        }

        createPolyline(); // Call createPolyline to initialize myPolyline

        return InitialView(
          selectedindex: 0,
          body: GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(30.427755, -9.598107),
              zoom: 12,
            ),
            polylines: myPolyline.toSet(),
          ),
        );
      },
    );
  }
}
