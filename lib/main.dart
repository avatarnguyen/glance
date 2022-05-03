import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/presentation/pages/app.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  tz.initializeTimeZones();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
