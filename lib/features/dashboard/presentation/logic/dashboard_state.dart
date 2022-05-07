import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  /// Data is present state
  const factory DashboardState({required List items, List? allDayItems}) = Data;

  /// Initial/default state
  const factory DashboardState.initial() = Initial;

  /// Data is loading state
  const factory DashboardState.loading() = Loading;

  /// Error when loading data state
  const factory DashboardState.error([String? message]) = Error;
}
