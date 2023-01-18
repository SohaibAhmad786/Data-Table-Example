// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Student {
  final String regno;
  final String name;
  final String semester;
  final String discipline;
  final double cgpa;
  Student({
    required this.regno,
    required this.name,
    required this.semester,
    required this.discipline,
    required this.cgpa,
  });

  Student copyWith({
    String? regno,
    String? name,
    String? semester,
    String? discipline,
    double? cgpa,
  }) {
    return Student(
      regno: regno ?? this.regno,
      name: name ?? this.name,
      semester: semester ?? this.semester,
      discipline: discipline ?? this.discipline,
      cgpa: cgpa ?? this.cgpa,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regno': regno,
      'name': name,
      'semester': semester,
      'discipline': discipline,
      'cgpa': cgpa,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      regno: map['regno'] as String,
      name: map['name'] as String,
      semester: map['semester'] as String,
      discipline: map['discipline'] as String,
      cgpa: map['cgpa'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) => Student.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Student(regno: $regno, name: $name, semester: $semester, discipline: $discipline, cgpa: $cgpa)';
  }

  @override
  bool operator ==(covariant Student other) {
    if (identical(this, other)) return true;
  
    return 
      other.regno == regno &&
      other.name == name &&
      other.semester == semester &&
      other.discipline == discipline &&
      other.cgpa == cgpa;
  }

  @override
  int get hashCode {
    return regno.hashCode ^
      name.hashCode ^
      semester.hashCode ^
      discipline.hashCode ^
      cgpa.hashCode;
  }
}
