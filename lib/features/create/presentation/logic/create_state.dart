import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_state.freezed.dart';

/// TODO: Run build_runner command to generate freezed code
@freezed
abstract class CreateState with _$CreateState {
  /// Data is present state
  const factory CreateState() = Data;

  /// Initial/default state
  const factory CreateState.initial() = Initial;

  /// Data is loading state
  const factory CreateState.loading() = Loading;

  /// Error when loading data state
  const factory CreateState.error([String? message]) = Error;
}
