import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//  TODO: Follow instructions in https://pub.dev/packages/google_maps_flutter
//  TODO: Keep track of API calls/usage
//  keys in android/app/src/main/AndroidManifest.xml, ios/Runner/AppDelegate.swift
class LocatePage extends StatefulWidget {
  @override
  State<LocatePage> createState() => LocatePageState();
}

class LocatePageState extends State<LocatePage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kChapelHill = CameraPosition(
    target: LatLng(35.913200, -79.055847),
    zoom: 14.4746,
  );

  static final CameraPosition _kOCRCC = CameraPosition(
      target: LatLng(35.930070, -79.032640),
      zoom: 12.0,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48B9BC), // Teal
        title: Text('Find Us'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.location_on, size: 30.0, color: Colors.white),
            onPressed: null,
          )
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF48B9BC), // Teal
        ),
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: 175.0,
                width: double.infinity,
                color: Colors.white,
                child: DrawerHeader(
                  child: Image(image: AssetImage('assets/OCRCC_logo.webp',)),
                ),
              ),
              ListTile(
                title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 25.0,
                ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/',
                  );
                }
              ),
              ListTile(
                title: Text('Resources', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.apps,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/resources',
                  );
                },
              ),
              ListTile(
                title: Text('Calendar', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.date_range,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/calendar',
                  );
                }
              ),
              ListTile(
                title: Text('Find Us', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Contact Us', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.call,
                  color: Colors.red[400],
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/call',
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text('About', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/about',
                  );
                },
              ),
            ],
          )
        )
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kChapelHill,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: _createMarker()
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToOCRCC,
        label: Text('OCRCC'),
        icon: Icon(Icons.my_location),
        backgroundColor: Color(0xFF48B9BC), // Teal
      ),
    );
  }

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
        markerId: MarkerId("OCRCC"),
        position: LatLng(35.930070, -79.032640),
        icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueRed,
        ),
      ),
    ].toSet();
  }

  Future<void> _goToOCRCC() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kOCRCC));
  }
}