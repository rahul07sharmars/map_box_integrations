import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(

      ),
      body:FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(28.6139391, 77.2090212),
          zoom: 15,
        ),

        children: [
          TileLayer(
            urlTemplate: 'https://api.mapbox.com/styles/v1/rahul07sharma/clkth788o00rx01qp78s35spi/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicmFodWwwN3NoYXJtYSIsImEiOiJjbGtzYmN6NnMwMDF6M2hvYTRvb2FwdDI2In0.7tSwDDTzzWIx1VhtYbfvNQ',
            additionalOptions: {
              'accessToken':'pk.eyJ1IjoicmFodWwwN3NoYXJtYSIsImEiOiJjbGtzYmN6NnMwMDF6M2hvYTRvb2FwdDI2In0.7tSwDDTzzWIx1VhtYbfvNQ',
              'id':'mapbox.satellite'
            },
          ),
        ],
      )


    );
  }
}
