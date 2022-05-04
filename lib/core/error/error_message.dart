import 'package:glance/core/error/failure.dart';

class ErrorMessage {
  static String getErrorMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server Communication failed';
    } else if (failure is AuthFailure) {
      return 'Failed to Authenticate';
    } else if (failure is ArgumentFailure) {
      return 'Wrong Argument was passed';
    }
    return 'Unbekannte Fehler aufgetreten';
  }
}
