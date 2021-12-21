import 'package:edoc/models/AvailableTimeDataModel.dart';

import 'package:flutter/material.dart';

import 'Prescription.dart';
import 'Profile.dart';
import 'Home.dart';
import 'Appointments.dart';

class AvailableTimes extends StatefulWidget {
  @override
  _AvailableTimesState createState() => _AvailableTimesState();
}

class _AvailableTimesState extends State<AvailableTimes> {
  int index = 3;
  final double spacing = 8;

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  List<ChoiceChipData> choiceChips = ChoiceChips.all;

  @override
  Widget build(BuildContext context) => Scaffold(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Available Times",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20),
                buildChoiceChips()
              ],
            ),
          ),
        ),
      );

  Widget buildChoiceChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

                      return choiceChip == newChip
                          ? newChip.copy(isSelected: isSelected)
                          : newChip;
                    }).toList();
                  }),
                  selected: choiceChip.isSelected,
                  selectedColor: Colors.blue,
                  backgroundColor: Colors.grey.shade800,
                ))
            .toList(),
      );
}

class ChoiceChips {
  static final all = <ChoiceChipData>[
    ChoiceChipData(
      label: '10.00 AM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '10.30 AM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '11.00 AM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '11.30 AM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '12.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '12.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '01.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '01.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '02.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '02.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '03.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '03.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '04.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '04.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '05.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '05.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '06.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '06.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '07.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '07.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '08.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '08.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '09.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '09.30 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: '10.00 PM',
      isSelected: false,
      selectedColor: Colors.blue,
      textColor: Colors.white,
    ),
  ];
}
