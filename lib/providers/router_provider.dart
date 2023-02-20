import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../router/router.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

