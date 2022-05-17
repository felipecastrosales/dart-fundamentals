class Course {
  String name;
  String description;

  Course({
    required this.name,
    required this.description,
  });

  @override
  String toString() => 'Course(name: $name, description: $description)';
}
