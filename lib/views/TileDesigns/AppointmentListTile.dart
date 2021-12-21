import 'package:edoc/models/AppointmentDataModel.dart';
import 'package:flutter/material.dart';

class AppointmentListTile extends ListTile {
  AppointmentListTile(AppointmentDataModel appointmentDataModel)
      : super(
            subtitle: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Container(
                      height: 70.0,
                      width: 4.0,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/edoc_profile.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(
                          appointmentDataModel.name,
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        new Text(appointmentDataModel.title),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      icon: Icon(
                        Icons.chat_rounded,
                        color: Colors.blue,
                        size: 24.0,
                      ),
                      label: Text('Chat',
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0)),
                      onPressed: () {
                        print('Chat Pressed');
                      },
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(width: 5),
                    TextButton.icon(
                      icon: Icon(
                        Icons.call_rounded,
                        color: Colors.blue,
                        size: 24.0,
                      ),
                      label: Text('Call',
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0)),
                      onPressed: () {
                        print('Call Pressed');
                      },
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.shade700,
                    ),
                    TextButton.icon(
                      icon: Icon(
                        Icons.cancel_rounded,
                        color: Colors.red,
                        size: 24.0,
                      ),
                      label: Text('Cancel',
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0)),
                      onPressed: () {
                        print('Cancel Pressed');
                      },
                    )
                  ],
                )
              ],
            ),
            leading: Column(children: [
              Text(
                  appointmentDataModel.date[0] +
                      appointmentDataModel.date[1] +
                      appointmentDataModel.date[2],
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0)),
              Text(
                RegExp(r'(\d+)')
                    .allMatches(appointmentDataModel.date)
                    .map((m) => m.group(0))
                    .join('/'),
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              ),
              Text(appointmentDataModel.time),
            ]));
}
