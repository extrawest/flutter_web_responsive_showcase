import 'package:flutter_web_training/models/location.dart';
import 'package:flutter_web_training/models/user.dart';

class UserFull extends User {
  final String gender;
  final String email;
  final DateTime dateOfBirth;
  final String phone;
  final Location location;
  final DateTime registerDate;
  final DateTime updatedDate;

  UserFull({
    required this.gender,
    required this.email,
    required this.dateOfBirth,
    required this.phone,
    required this.location,
    required this.registerDate,
    required this.updatedDate,
    required super.id,
    required super.title,
    required super.firstName,
    required super.lastName,
    required super.picture,
  });

  factory UserFull.fromJson(Map<String, dynamic> json) => UserFull(
      id: json['id'],
      title: json['title'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      picture: json['picture'],
      gender: json['gender'],
      email: json['email'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      phone: json['phone'],
      location: Location.fromJson(json['location']),
      registerDate: DateTime.parse(json['registerDate']),
      updatedDate: DateTime.parse(json['updatedDate']),
    );
}
