// Person
/// name: Felipe
/// email: soufeliposales@gmail.com

// Person
/// name: Karol
/// email: karolbarroso33@gmail.com

class Person {
  String name;
  String email;
  String phone;

  Person({
    required this.name,
    required this.email,
    required this.phone,
  });

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  //   if (other is Person) {
  //     if (other.name == name) {
  //       if (other.email == email) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     } else {
  //       return false;
  //     }
  //   } else {
  //     return false;
  //   }
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  //   var isEquals = false;
  //   if (other is Person) {
  //     if (other.name == name) {
  //       if (other.email == email) {
  //         isEquals = true;
  //       }
  //     }
  //   }
  //   return isEquals;
  // }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person &&
        other.name == name &&
        other.email == email &&
        other.phone == phone;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ phone.hashCode;

  String toString() {
    return 'Person | name: $name, email: $email, phone: $phone';
  }
}
