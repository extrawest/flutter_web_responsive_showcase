import 'dart:convert';

import 'package:flutter/services.dart';

class Config {
  final String apiDomain;
  final String apiKey;
  final String dsn;

  Config({
    required this.apiDomain,
    required this.apiKey,
    required this.dsn,
  });

  factory Config.fromJson(Map<String, dynamic> json) => Config(
    apiDomain: json["apiDomain"],
    apiKey: json["apiKey"],
    dsn: json["dsn"],
  );

  static Future<Config> fromAsset(String path) async {
    final file = await rootBundle.loadString(path);
    final json = jsonDecode(file);
    return Config.fromJson(json);
  }
}