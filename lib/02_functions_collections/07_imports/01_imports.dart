import 'sums/sum.dart' as sum;
import 'new_sums/sum.dart' as new_sum;
//import 'package:dart_fundamentos/02_functions_collections/07_imports/01_imports.dart';

void main() {
  var totalInt = sum.sumInt(7, 16);
  print('Int sum: $totalInt');

  var totalDouble = new_sum.sumDouble(10.1, 7.0);
  print('Double sum: $totalDouble');
}
