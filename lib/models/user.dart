import 'package:flutter/cupertino.dart';

class User {
  final String id;
  final String title;
  final String firstName;
  final String lastName;
  final String picture;

  User({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    title: json["title"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    picture: json["picture"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "firstName": firstName,
    "lastName": lastName,
    "picture": picture,
  };
}