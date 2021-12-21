class AppointmentDataModel {
  AppointmentDataModel({
    this.name,
    this.title,
    this.date,
    this.time,
  });

  final String name;
  final String title;
  final String date;
  final String time;
}

List<AppointmentDataModel> allAppointments = [
  AppointmentDataModel(name: "Doc01", title: "First Doctor", date: "Thu-01-04", time: "10.00 AM"),
  AppointmentDataModel(name: "Doc02", title: "Second Doctor", date: "Fri-02-04", time: "11.00 AM"),
  AppointmentDataModel(name: "Doc03", title: "Third Doctor", date: "Sat-03-04", time: "12.00 PM"),
  AppointmentDataModel(name: "Doc04", title: "Fourth Doctor", date: "Sun-04-04", time: "01.00 PM"),
  AppointmentDataModel(name: "Doc05", title: "Fifth Doctor", date: "Mon-05-04", time: "02.00 PM"),
  AppointmentDataModel(name: "Doc06", title: "Sixth Doctor", date: "Tue-06-04", time: "03.00 PM"),
  AppointmentDataModel(name: "Doc07", title: "Seventh Doctor", date: "Wed-07-04", time: "04.00 PM"),
  AppointmentDataModel(name: "Doc08", title: "Eighth Doctor", date: "Thu-08-04", time: "05.00 PM"),
  AppointmentDataModel(name: "Doc09", title: "Ninth Doctor", date: "Fri-09-04", time: "06.00 PM"),
  AppointmentDataModel(name: "Doc10", title: "Tenth Doctor", date: "Sat-10-04", time: "07.00 PM"),
  AppointmentDataModel(name: "Doc11", title: "Eleventh Doctor", date: "Sun-11-04", time: "08.00 PM"),
  AppointmentDataModel(name: "Doc12", title: "Twelfth Doctor", date: "Mon-12-04", time: "09.00 PM"),
];
