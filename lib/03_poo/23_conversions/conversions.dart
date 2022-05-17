import 'course.dart';
import 'student.dart';

void main() {
  var fruits = [
    Fruits('banana'),
    Fruits('potato'),
  ];

  var fruitsMap = {
    {'name': 'banana'},
    {'name': 'potato'},
  };

  // var juices = Juice(flavor: fruits[0].name);

  // var juices = fruits.map((e) => null);

  // List<Juice> juices = [];

  // for (var fruit in fruits) {
  //   final juice = Juice(flavor: fruit.name);
  //   juices.add(juice);
  // }
  // print('juices: $juices');

  var juices = fruits.map((e) {
    return Juice(flavor: e.name);
  }).toList();
  print('juices: $juices');

  var juicesMap = fruitsMap.map((e) {
    return Juice(flavor: e['name'] ?? 'Without flavor');
  });
  print('juicesMap: $juicesMap');

  var studentWay = <String, Object>{
    'name': 'Felipe Sales',
    'courses': [
      {'name': 'Deep Code Way', 'description': 'The best course!'},
      {'name': 'Deep new Coding Way', 'description': 'The new best course!'},
      {'name': 'Deep Coder to be Way', 'description': 'The premium course!'},
    ],
  };
  final courseMap = studentWay['courses'] as List<Map<String, String>>;
  final courses = courseMap.map((course) {
    var name = course['name'] as String;
    var description = course['description'] as String;
    return Course(name: name, description: description);
  }).toList();
  final studentName = studentWay['name'] as String;

  final student = Student(name: studentName, courses: courses);
  print('student: $student');
}

class Juice {
  String flavor;
  Juice({required this.flavor});

  @override
  String toString() => 'Juice(flavor: $flavor)';
}

class Fruits {
  String name;
  Fruits(this.name);
}
