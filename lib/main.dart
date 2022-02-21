import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'core/presentation/pages/app.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(),
  );
  runApp(const MyApp());
}
