import 'dart:io';

import 'todo.dart';

@Todo(
  who: 'Felipe Sales in class',
  which: 'trying read the annotation of class',
)
@gzip
class Person {
  @Todo(
    who: 'Felipe Sales in atribute',
    which: 'trying read the annotation of atribute',
  )
  String? name;

  @Todo(
    who: 'Felipe Sales in method',
    which: 'trying read the annotation of method',
  )
  void doIt() {}
}
