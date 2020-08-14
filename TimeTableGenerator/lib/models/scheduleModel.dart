class College {
  String title;
  List majors;

  College(this.title, this.majors);
}

class Major {
  String title;
  List schedules;

  Major(this.title, this.schedules);
}

class Schedule {
  int grade;
  String type;
  int academicNumber;
  int partition;
  String title;
  String credit;
  String prof;
  String time;
  String classRoom;
  bool engCert;

  Schedule(this.grade, this.type, this.academicNumber, this.partition, this.title, this.credit, this.prof, this.time, this.classRoom, this.engCert);
}