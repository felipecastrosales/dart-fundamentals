import 'artist.dart';
import 'dance.dart';
import 'sing.dart';

class John extends Artist with Dance implements Sing {
  @override
  String sing() {
    return 'Sing gregorian chant';
  }
}
