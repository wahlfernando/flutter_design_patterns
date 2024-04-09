import '../students.dart';
import 'dart:math' as math;

abstract class StudentsBmiCalculator {
  const StudentsBmiCalculator();

  List<Student> calculateBmiAndReturnStudentList() {
    var studentList = getStudentsData();
    studentList = doStudentsFiltering(studentList);
    _calculateStudentsBmi(studentList);
    return studentList;
  }

  void _calculateStudentsBmi(List<Student> studentList) {
    for (final student in studentList) {
      student.bmi = _calculateBmi(student.height, student.weight);
    }
  }

  double _calculateBmi(double height, int weight) {
    return weight / math.pow(height, 2);
  }

  // Método de gancho
  List<Student> doStudentsFiltering(List<Student> studentList) {
    return studentList;
  }

  // Método abstrato
  List<Student> getStudentsData();
}