String? topName;

void main() {
  String name = '';
  String? nullName;

  name.isEmpty;
  //nullName.isEmpty;

  nullName = '';
  nullName.isEmpty;

  if (nullName != null) {
    nullName.isEmpty;
  }

  var localName = nullName;

  if (localName != null) {
    localName.isEmpty;
  }

  topName = '';
  topName!.isEmpty;
}
