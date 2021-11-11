import 'dart:convert';

import 'package:dart_fundamentos/04_async/07_models/user.dart';

class UserTypes {
  final String id;
  final String userId;
  final String name;

  UserTypes({
    required this.id,
    required this.userId,
    required this.name,
  });

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    return UserTypes(
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

  factory UserTypes.fromJson(String source) => UserTypes.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());

  @override
  toString() {
    return 'UserTypes(id: $id, userId: $userId, name: $name)';
  }
}
