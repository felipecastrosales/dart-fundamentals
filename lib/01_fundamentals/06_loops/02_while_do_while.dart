void main() {
  //        start     condition       increment
  // for (var i = 0; i < names.length; i+++) {}

  // while
  var number = 0;
  while (number <= 10) {
    print(number);
    number++;
  }

  // do while
  var index = 0;
  while (index > 10) {
    print('While not execute');
    print(index);
    index++;
  }

  do {
    print(index);
    //index++; 
  } while (index > 10);

}
