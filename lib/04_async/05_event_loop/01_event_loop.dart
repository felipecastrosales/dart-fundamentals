// microtask
import 'dart:async';

void main() {
  print('start: main');
  scheduleMicrotask(() => print('microtask - #01'));

  print(DateTime.now());

  Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print('Future #02 - delayed');
  });

  Future(() => print('Future #02'));
  Future(() => print('Future #03'));
  scheduleMicrotask(() => print('microtask - #02'));
  print('end: main');
}

// event 
//   delayed 
//   Future.delayed 
//   Future #02 - delayed 
//   Future #03 - delayed 

// micro task
//   main ok 
//   microtask - #01
//   microtask - #02
//   main ok  
