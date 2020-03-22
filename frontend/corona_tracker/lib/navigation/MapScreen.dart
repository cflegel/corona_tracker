import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:corona_tracker/i18n/appLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final center;

  const MapScreen({this.center});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).MapScreen_AppBarTitleText),
      ),
      body: ConnectivityWidget(
        builder: (context, isOnline) => _buildBody(isOnline),
        showOfflineBanner: false,
      ),
    );
  }

  Widget _buildBody(bool isOnline) {
    if (!isOnline) {
      return Center(
        // TODO i18n
        child: Text('Offline'),
      );
    }

    return GoogleMap(
      initialCameraPosition: _getCameraPosition(),
      markers: _getMarkers(),
    );
  }

  CameraPosition _getCameraPosition() {
    final cameraPosition = CameraPosition(
      target: LatLng(51.165691, 10.451526),
      zoom: 8,
    );

    return cameraPosition;
  }

  Set<Marker> _getMarkers() {
    final markers = Set<Marker>();

    // TOOD Add markers

    return markers;
  }
}
