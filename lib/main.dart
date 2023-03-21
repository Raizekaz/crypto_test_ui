import 'package:flutter/material.dart';
import 'package:test_ui_1/src/app/app.dart';
import 'package:test_ui_1/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await bootstrap(() {
    return App();
  });
}
