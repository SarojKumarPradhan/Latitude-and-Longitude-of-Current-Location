import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());
//------------------------
var str;
//-----------------------

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //----------------------------------------------------------
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
    str = position;
  }
  //----------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Get Your Current Location'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  child: Text('Get Current Location'),
                  onPressed: () {
                    //---------------------
                    getLocation();
                    //--------------------
                  },
                ),
                //-----------------------
                Text('yo $str'),
                //----------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
