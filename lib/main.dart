import 'package:edoc/views/drawerItems/Appointments.dart';
import 'package:edoc/views/drawerItems/AvailableTimes.dart';
import 'package:edoc/views/drawerItems/Prescription.dart';
import 'package:edoc/views/drawerItems/Profile.dart';
import 'package:edoc/views/drawerItems/Home.dart';
import 'package:edoc/views/onAppStart/Login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Login(),

    );
  }
}