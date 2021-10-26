import 'artist.dart';

mixin Dance on Artist {
  String dance() {
    return 'Dance forró';
  }

  @override
  String skills() {
    return 'Dancer';
  }
}
