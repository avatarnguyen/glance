import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:glance/core/dependency_injection/auth_dependency.dart';
import 'package:googleapis/calendar/v3.dart' as google_api;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInScreen(
      auth: ref.read(firebaseAuthProvider),
      providerConfigs: [
        const EmailProviderConfiguration(),
        GoogleProviderConfiguration(
          clientId: (Platform.isIOS
              ? dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_IOS']
              : dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_ANDROID'])!,
          scopes: <String>[
            google_api.CalendarApi.calendarScope,
          ],
        )
      ],
    );
  }
}
