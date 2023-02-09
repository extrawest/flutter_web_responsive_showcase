import 'dart:convert';

import 'package:flutter/services.dart';

class Config {
  final String apiDomain;
  final String apiKey;

  Config({
    required this.apiDomain,
    required this.apiKey,
  });

  factory Config.fromJson(Map<String, dynamic> json) => Config(
    apiDomain: json["apiDomain"],
    apiKey: json["apiKey"],
  );

  static Future<Config> fromAsset(String path) async {
    final file = await rootBundle.loadString(path);
    final json = jsonDecode(file);
    return Config.fromJson(json);
  }
}