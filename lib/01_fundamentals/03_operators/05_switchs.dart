void main() {
  final dayOfTheWeek = 1;
  var dayWeekStr = '';

  // if (dayOfTheWeek == 0) {
  //   dayWeekStr = 'Monday';
  // } else if (dayOfTheWeek == 1) {
  //   dayWeekStr = 'Tuesday';
  // } else {
  //   dayWeekStr = 'Not find';
  // }

  // Switch -> verify equality
  switch (dayOfTheWeek) {
    case 0:
      dayWeekStr = 'Monday';
      break;
    case 1:
      dayWeekStr = 'Tuesday';
      break;
    default:
      dayWeekStr = 'Not find';
      break;
  }
  print(dayWeekStr);

  var age = 20;

  if (age == 18) {
    print('legal age');
  } else if (age > 18) {
    print('legal age also');
  } else {
    print('minor age');
  }

  age = 17;

  switch (age) {
    case 18:
    case 19:
      print('legal age also');
      break;
    default:
      print('minor age');
      break;
  }
}
