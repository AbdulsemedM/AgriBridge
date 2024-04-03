import 'package:flutter/material.dart';

class PolygonEdgePicker extends StatefulWidget {
  final int numberOfEdges;

  const PolygonEdgePicker({Key? key, required this.numberOfEdges})
      : super(key: key);

  @override
  _PolygonEdgePickerState createState() => _PolygonEdgePickerState();
}

class _PolygonEdgePickerState extends State<PolygonEdgePicker> {
  List<LatLng> edgeCoordinates = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick Polygon Edges'),
      ),
      body: ListView.builder(
        itemCount: widget.numberOfEdges,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Edge ${index + 1}'),
            onTap: () {
              _showCoordinatePickerDialog(index);
            },
          );
        },
      ),
    );
  }

  void _showCoordinatePickerDialog(int index) {
    // Here you can implement a dialog or navigate to a screen
    // where the user can pick latitude and longitude for the edge.
    // For demonstration purposes, I'm just printing the edge index.
    print('Picking coordinates for Edge ${index + 1}');
  }
}

class LatLng {
  final double latitude;
  final double longitude;

  LatLng({required this.latitude, required this.longitude});
}
