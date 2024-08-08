import 'package:core/di/app_di.dart';
import 'package:flutter/material.dart';
import 'package:utilities/utilities.dart';

import 'app/tack_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  appDI.initNavigationDependencies();
  ScreenUtil.enablePortraitOrientationOnly();

  runApp(
    const TackApp(),
  );
}
