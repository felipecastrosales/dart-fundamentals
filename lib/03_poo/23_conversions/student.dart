import 'course.dart';

class Student {
  String name;
  List<Course> courses;

  Student({
    required this.name,
    required this.courses,
  });

  @override
  String toString() => 'Student(name: $name, courses: $courses)';
}
