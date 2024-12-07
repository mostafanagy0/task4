class SchoolData {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudents;
  final String numberOfTeachers;

  SchoolData({
    required this.schoolName,
    required this.schoolAddress,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory SchoolData.fromJson(Map<String, dynamic> json) {
    return SchoolData(
      schoolName: json['School Name'] as String,
      schoolAddress: json['School Address'] as String,
      numberOfStudents: json['Number of Students'] as String,
      numberOfTeachers: json['Number of Teachers'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'School Name': schoolName,
      'School Address': schoolAddress,
      'Number of Students': numberOfStudents,
      'Number of Teachers': numberOfTeachers,
    };
  }
}
