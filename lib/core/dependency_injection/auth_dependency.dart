import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:glance/features/auth/data/datasource/firebase_auth_datasource.dart';
import 'package:glance/features/auth/data/repository/auth_repository_impl.dart';
import 'package:glance/features/auth/domain/respository/auth_repository.dart';
import 'package:glance/features/auth/domain/usecases/auth_watch_changes.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart' as google_api;
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Third Party Dependency
final googleSignInProvider = Provider<GoogleSignIn>((ref) {
  return GoogleSignIn(
    clientId: Platform.isIOS
        ? dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_IOS']
        : dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_ANDROID'],
    scopes: <String>[
      google_api.CalendarApi.calendarScope,
    ],
  );
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final firebaseFirestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

// Glance Classes Dependencies
final authWatchChangesProvider = Provider<AuthWatchChanges>((ref) {
  return AuthWatchChanges(ref.read(authRepositoryProvider));
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(ref.read(authDatasourceProvider));
});

final authDatasourceProvider = Provider<AuthDatasource>((ref) {
  return FirebaseAuthDatasource(ref.read(firebaseAuthProvider));
});
