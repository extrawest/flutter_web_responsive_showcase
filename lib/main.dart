import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_training/app.dart';

import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  await setupLocator();

  runApp(const WebApp());
}