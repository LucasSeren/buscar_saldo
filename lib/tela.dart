import 'package:flutter/services.dart';
@override
void initState(){
  super.initState();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
}