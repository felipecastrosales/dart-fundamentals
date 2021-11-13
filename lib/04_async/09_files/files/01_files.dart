import 'dart:io';

Future<void> main() async {
  var file = File('lib/04_async/09_files/files/file.txt');
  print(file);

  // // sync read
  // var fileData1 = file.readAsStringSync();
  // print(fileData1);

  // // read async
  // var fileData2 = await file.readAsString();
  // print(fileData2);

  // // read line sync
  // var fileData3 = file.readAsLinesSync();
  // print(fileData3);

  // // read line async
  // var fileList = await file.readAsLines();
  // print(fileList[2]);

  var file2 = File('lib/04_async/09_files/files/file2.txt');
  file2.writeAsString('File\n', mode: FileMode.append);

  var list = ['Felipe', 'Karol', 'Icaro'];

  var file3 = File('lib/04_async/09_files/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);
  list.forEach((name) => writeFile.write('$name\n'));
}
