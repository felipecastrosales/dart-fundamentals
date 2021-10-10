void main() {
  // Don't accept null
  List<String> name = ['F'];
  var name1 = ['F'];

  // accept null
  List<String>? name2 = null;

  // ! not works
  // List<String> nameInNull = [null];

  // works -> item null and list can't be null 
  List<String?> nameInNull = [null];

  // works - item and list can be null
  List<String?>? nameInNull2 = [null, 'Felipe'];

}
