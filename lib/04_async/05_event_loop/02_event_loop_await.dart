import 'dart:async';

Future<void> main() async {
  print('start: main');
  scheduleMicrotask(() => print('microtask - #01'));

  await Future.delayed(Duration(seconds: 1), () {
    print('Future #02 - delayed');
  });

  Future(() {
    var i = 0;
    while (i > 10) {
      i++;
    }
    print('Future #02');
  });

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
