void main() {
  // const color = 'red';

  // if (color == 'red') {

  // }

  var color = Colors.red;
  if (color == Colors.red) {}

  switch (color) {
    case Colors.red:
      break;
    case Colors.green:
      break;
    case Colors.blue:
      break;
  }

  // before
  var blue = 'blue';
  var blueColor = Colors.values.where(
    (color) => color.toString() == 'Colors.$blue',
  );
  print(blueColor);

  // after with < 2.15 | testing in DartPad

  // print(Colors.blue.name);
  // var colorBlue215 = Colors.values.byName(blue);
  // print(colorBlue215);

  // var colorsMap1 = Colors.values.asMap();
  // print(colorsMap1);

  // var colorsMap2 = Colors.values.asNameMap();
  // print(colorsMap2);

  // var colorBlueByMap = colorsMap2[blue];
  // print(colorBlueByMap);

  // // var colorWhite = Colors.values.byName('white');
  // // print(colorWhite);
}

enum Colors {
  red,
  green,
  blue,
}
