// Using Dart Data Class Generator

import 'dart:convert';

import 'package:dart_fundamentals/04_async/07_models/user_types.dart';

import 'user_types_easy.dart';

class UserEasy {
  final String id;
  final String name;
  final String userName;
  final List<UserTypesEasy> userTypes;

  UserEasy({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  factory UserEasy.fromMap(Map<String, dynamic> map) {
    return UserEasy(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      userTypes: map['user_types']?.map<UserTypesEasy>((type) {
            return UserTypesEasy.fromMap(type);
          }).toList() ??
          [],
    );
  }

  factory UserEasy.fromJson(String source) => UserEasy.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((e) => e.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  toString() {
    return 'UserEasy(id: $id, name: $name, username: $userName, user_types: $userTypes)';
  }
}
