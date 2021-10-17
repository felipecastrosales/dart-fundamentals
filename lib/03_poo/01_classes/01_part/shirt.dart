// Characters
// Behaviors

class Shirt {
  // Attributes
  String? size;
  String? color;
  String? logo;

  // Behaviors - Functions
  String type() {
    if (logo == 'Nike') {
      return 'Do not wash in the washing machine';
    } else {
      return 'Wash in the washing machine';
    }
  }
}
