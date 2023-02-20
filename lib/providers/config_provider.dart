import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/config.dart';

const _configAssetPath = 'assets/config.json';

final configProvider = FutureProvider((ref) async {
  return await Config.fromAsset(_configAssetPath);
});