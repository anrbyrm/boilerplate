import 'package:boilerplate/injection.dart';
import 'package:boilerplate/src/app.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  setupLocator();

  runApp(const App());
}
