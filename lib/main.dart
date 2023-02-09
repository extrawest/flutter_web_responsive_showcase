import 'package:flutter/cupertino.dart';
import 'package:flutter_web_training/app.dart';

import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();

  runApp(const WebApp());
}