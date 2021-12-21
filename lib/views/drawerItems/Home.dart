import 'package:flutter/material.dart';

import 'Appointments.dart';
import 'AvailableTimes.dart';
import 'Prescription.dart';
import 'Profile.dart';

class HomePage extends StatelessWidget {
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
        title: Text('Home'),
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
      body: Center(child: Text('Home')),
    );
  }
}
