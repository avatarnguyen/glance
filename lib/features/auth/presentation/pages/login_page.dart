import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:googleapis/calendar/v3.dart' as google_api;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
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
