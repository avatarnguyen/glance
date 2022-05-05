part of 'auth_provider.dart';

class AuthNotifier extends ChangeNotifier {
  final Ref ref;

  AuthNotifier(this.ref) {
    ref
        .read(authChangeStreamProvider)
        .maybeMap(orElse: () => notifyListeners());
    // ref.listen(
    //   authChangeStreamProvider,
    //   (_, __) => notifyListeners(),
    // );
  }
}
