void main() {
  String name = 'Felipe';
  print(name);
  name = 'LF7';
  print(name);

  // modifiers access
  // working with variables
  // final and const

  // final -> time execution, variable isn't changeable later initialization 
  // use without moderation
  final fullName = 'L Felipe';
  // can't do this because it has already been attributed
  // fullName = 'test';
  final fullName2 = fullName;

  // const: compile execution
  // are not changeable 
  // can only be assigned variables of type const 
  const lastName = 'Sales';
  // it's not possible
  // const lastName2 = name;

  // both are immutable
}
