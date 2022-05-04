import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/presentation/pages/app.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  tz.initializeTimeZones();

  await dotenv.load();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
