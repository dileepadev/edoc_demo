import 'package:flutter/material.dart';

import 'Appointments.dart';
import 'AvailableTimes.dart';
import 'Prescription.dart';
import 'Home.dart';

class Profile extends StatelessWidget {
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
        title: Text('My Profile'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 12.0, 10.0, 22.0),
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    Image.asset(
                      'assets/images/edoc_profile.png',
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "Jems Anderson",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "jems_anderson@hotmai.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              color: Colors.blue,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 22.0),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Registered Since 10th July 2020",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Personal Informations",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Icon(Icons.person_rounded),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            hintText: "Jems Anderson"),
                        keyboardType: TextInputType.text),
                    SizedBox(height: 10),
                    TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Icon(Icons.email_rounded),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            hintText: "jems_anderson@hotmail.com"),
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(height: 10),
                    TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Icon(Icons.settings_phone_rounded),
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            hintText: "+9089867656"),
                        keyboardType: TextInputType.phone),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hospitals",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(
                              color: Colors.blue.shade800,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.medical_services_rounded,
                                      color: Colors.grey.shade700),
                                  SizedBox(width: 5),
                                  Text(
                                    "Hospital Name",
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5)
                            ],
                          );
                        }),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Experience & Fees",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Experience",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "8 Years",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.grey.shade300,
                      height: 50.0,
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fee",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "\$1000",
                              style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.grey.shade300,
                      height: 50.0,
                    ),
                    SizedBox(height: 50),
                    Material(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey.shade800,
                      child: MaterialButton(
                        minWidth: double.infinity,
                        padding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () {
                          print("update profile");
                        },
                        child: Text("UPDATE PROFILE",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0).copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
