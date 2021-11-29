import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _Map createState() => _Map();
}

class _Map extends State<Map> {
  late GoogleMapController _controller;

  List<Marker> _markers = [];

  void _onMapCreated(GoogleMapController controller) {
    _markers.add(
      Marker(
        markerId: MarkerId("id-1"),
        position: LatLng(13.986647, -89.678950),
        infoWindow: InfoWindow(
          title: "Dra Gonzalez",
          snippet:
              "Chalchuapa es una ciudad del distrito homónimo del departamento de Santa Ana, en la zona occidental de El Salvador",
        ),
      ),
    );
    /*
    _markers.add(
      Marker(
        markerId: MarkerId("id-2"),
        position: LatLng(13.902388, -89.502525),
        infoWindow: InfoWindow(
          title: "El congo",
          snippet:
              "El Congo es un municipio salvadoreño ubicado en la zona occidental, en el Distrito de Santa Ana del Departamento de Santa Ana",
        ),
      ),
    );*/
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(14.015188, -89.527545), zoom: 10),
        mapType: MapType.normal,
        onMapCreated: _onMapCreated,
        markers: _markers.map((e) => e).toSet(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.animateCamera(CameraUpdate.zoomOut());
        },
        child: Icon(Icons.zoom_out),
      ),
    );
  }
}
