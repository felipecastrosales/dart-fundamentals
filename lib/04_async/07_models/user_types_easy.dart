// Using Dart Data Class Generator

import 'dart:convert';

class UserTypesEasy {
  final String id;
  final String userId;
  final String name;

  UserTypesEasy({
    required this.id,
    required this.userId,
    required this.name,
  });

  factory UserTypesEasy.fromMap(Map<String, dynamic> map) {
    return UserTypesEasy(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypesEasy.fromJson(String source) => UserTypesEasy.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());

  @override
  toString() {
    return 'UserTypesEasy(id: $id, userId: $userId, name: $name)';
  }
}
