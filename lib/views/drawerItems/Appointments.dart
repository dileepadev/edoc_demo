import 'package:edoc/models/AppointmentDataModel.dart';
import 'package:edoc/views/TileDesigns/AppointmentListTile.dart';
import 'package:edoc/views/secondScreens/AppointmentDetails.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'AvailableTimes.dart';
import 'Prescription.dart';
import 'Profile.dart';

class Appointments extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Hello Doctor',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                print('Home');
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return HomePage();
                }));
              },
            ),
            ListTile(
              title: Text('My Profile'),
              onTap: () {
                print('My Profile');
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Profile();
                }));
              },
            ),
            ListTile(
              title: Text('My Appointments'),
              onTap: () {
                print('My Appointments');
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Appointments();
                }));
              },
            ),
            ListTile(
              title: Text('New Prescription'),
              onTap: () {
                print('New Prescription');
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Prescription();
                }));
              },
            ),
            ListTile(
              title: Text('Available Times'),
              onTap: () {
                print('Available Times');
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return AvailableTimes();
                }));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My Appointments'),
        centerTitle: true,
        //automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: [
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Back Button Clicked");
                    Navigator.pop(context);
                  }),
            ],
          ),
        ],
      ),
      body: Container(
        child: _appointmentList(),
      ),
    );
  }

  Widget _appointmentList() {
    return ListView.builder(
        itemCount: allAppointments.length,
        itemBuilder: (BuildContext context, int index) {
          AppointmentDataModel appointmentDataModel = allAppointments[index];
          return GestureDetector(
            onTap: () => [
              print(appointmentDataModel.name),
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return AppointmentDetails();
              })),
            ],
            child: Card(
              elevation: 1.0,
              child: Container(
                child: AppointmentListTile(appointmentDataModel),
                height: 125.0,
              ),
            ),
          );
        });
  }
}
