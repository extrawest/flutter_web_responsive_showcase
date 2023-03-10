import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_training/app.dart';
import 'package:flutter_web_training/firebase_options.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'models/config.dart';

const _configFilePath = 'assets/config.json';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  final config = await Config.fromAsset(_configFilePath);

  await SentryFlutter.init(
    (options) {
      options.dsn = config.dsn;
    },
    appRunner: () => runApp(const ProviderScope(child: WebApp())),
  );
}
