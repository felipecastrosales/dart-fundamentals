import 'dart:mirrors';
import 'person.dart';
import 'todo.dart';

void main() {
  final person = Person();

  var instanceMirror = reflect(person);

  ClassMirror classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Todo) {
      print('class');
      print('which: ${instanceAnnotation.which}');
      print('who: ${instanceAnnotation.who}');
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) {
    if (declarationMirror is VariableMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Todo) {
          print('atributes');
          print('which: ${instanceAnnotation.which}');
          print('who: ${instanceAnnotation.who}');
        }
      });
    } else if (declarationMirror is MethodMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Todo) {
          print('methods');
          print('which: ${instanceAnnotation.which}');
          print('who: ${instanceAnnotation.who}');
        }
      });
    }
  });
}
