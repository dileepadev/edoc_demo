import 'package:flutter/material.dart';

class AppointmentDetails extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Appointment booked for'),
        centerTitle: true,
        //automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              print("Back Button Clicked");
              Navigator.pop(context);
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          padding: EdgeInsets.all(10.0),
          onPressed: () {
            print("Cancel Appointment Clicked");
          },
          child: Text(
            "Cancel Appointment",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add new appointment clicked");
        },
        child: const Icon(Icons.assignment_rounded),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 22.0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Emmay Anderson",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Liver Problem since 5 days",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(40.0, 15.0, 20.0, 22.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.airplay_rounded, color: Colors.blue,),
                        SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment date & time",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "12 June, 10.00 Morning",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "In 5 days",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.location_on_rounded, color: Colors.blue,),
                        SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "At Zydus Hospital",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Box. Road, City, Country",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.person_rounded, color: Colors.blue,),
                        SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment booked for",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Emmay Anderson",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "+1234567890",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.info_rounded, color: Colors.blue,),
                        SizedBox(width: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment No",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "90785646",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Only For Reference",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    )
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
