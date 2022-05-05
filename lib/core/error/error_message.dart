import 'package:glance/core/error/failure.dart';
import 'package:glance/features/auth/domain/failures/auth_failure.dart';

class ErrorMessage {
  static String getAuthErrorMessage(AuthFailure failure) {
    //TODO: might need to implement this
    return 'Failed to Authenticate User with Firebase';
  }

  static String getErrorMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server Communication failed';
    } else if (failure is CacheFailure) {
      return 'Failed to Cache Data';
    } else if (failure is ArgumentFailure) {
      return 'Wrong Argument was passed';
    }
    return 'Unbekannte Fehler aufgetreten';
  }
}
