import 'dart:convert';

import '../mock_api/json_students_api.dart';
import '../students.dart';
import 'students_imc_calculator.dart';

class StudentsJsonBmiCalculator extends StudentsBmiCalculator {
  const StudentsJsonBmiCalculator({
    this.api = const JsonStudentsApi(),
  });

  final JsonStudentsApi api;

  @override
  List<Student> getStudentsData() {
    final studentsJson = api.getStudentsJson();
    final studentsMap = json.decode(studentsJson) as Map<String, dynamic>;
    final studentsJsonList = studentsMap['students'] as List;
    final studentsList = studentsJsonList.map((json) {
      final studentJson = json as Map<String, dynamic>;

      return Student(
        fullName: studentJson['fullName'] as String,
        age: studentJson['age'] as int,
        height: studentJson['height'] as double,
        weight: studentJson['weight'] as int,
      );
    }).toList();

    return studentsList;
  }
}