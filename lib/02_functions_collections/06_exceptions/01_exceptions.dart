void main() {
  String idade = '17';
  String? name;

  try {
    var ageParse = int.parse(idade);
    //name!.toLowerCase();
    if (ageParse == 17) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    print('Error to convert age');
    //print(e);
    //print(s);
  } on TypeError {
    print('Error to convert age');
  } on Exception {
    print('age is 17');
  } catch (e) {
    print(e);
    print('Error to execute software');
  } finally {
    print('finally');
  }
}
