import 'package:flutter_web_training/models/user.dart';

class Post {
  final String id;
  final String image;
  final int likes;
  final List<String> tags;
  final String text;
  final DateTime publishDate;
  final User owner;

  Post({
    required this.id,
    required this.image,
    required this.likes,
    required this.tags,
    required this.text,
    required this.publishDate,
    required this.owner,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json['id'],
    image: json['image'],
    likes: json['likes'],
    tags: List<String>.from(json['tags'].map((x) => x)),
    text: json['text'],
    publishDate: DateTime.parse(json['publishDate']),
    owner: User.fromJson(json['owner']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'image': image,
    'likes': likes,
    'tags': List<dynamic>.from(tags.map((x) => x)),
    'text': text,
    'publishDate': publishDate.toIso8601String(),
    'owner': owner.toJson(),
  };
}