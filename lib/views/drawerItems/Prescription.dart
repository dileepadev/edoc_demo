import 'package:flutter/material.dart';

import 'Appointments.dart';
import 'AvailableTimes.dart';
import 'Home.dart';
import 'Profile.dart';

class Prescription extends StatelessWidget {
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
        title: Text('New Prescription'),
        centerTitle: true,
        //automaticallyImplyLeading: false,
        elevation: 0.0,
        actions: [
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.cancel_rounded,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "No Prescription Uploaded",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Add Description",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              color: Colors.grey.shade300,
              height: 60.0,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 12),
                  Image.asset(
                    'assets/images/edoc_prescription.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(width: 15),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      print("UPLOAD CLICKED");
                    },
                    child: Text(
                      "Upload".toUpperCase(),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/edoc_doc_pres.png"),
                        fit: BoxFit.cover,),),
                padding: EdgeInsets.only(top: 80.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {
                          print("CAMERA CLICKED");
                        },
                        child: Column(
                          children: [
                            Text(
                              "CAMERA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Take a picture with your\ncamera",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {
                          print("GALLERY CLICKED");},
                        child: Column(
                          children: [
                            Text(
                              "GALLERY",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Choose a image from your\ngallery",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  color: Colors.black.withOpacity(0.55),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "Add Description"),
                      keyboardType: TextInputType.text),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "Title"),
                      keyboardType: TextInputType.text),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "Name"),
                      keyboardType: TextInputType.text),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "Contact Number"),
                      keyboardType: TextInputType.text),
                  SizedBox(height: 10),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: "Email"),
                      keyboardType: TextInputType.text),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
