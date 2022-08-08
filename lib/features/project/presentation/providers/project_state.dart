import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/project/domain/models/project.dart';

part 'project_state.freezed.dart';

@freezed
abstract class ProjectState with _$ProjectState {
  /// Data is present state
  const factory ProjectState.loaded({
    required List<Project> projects,
  }) = Data;

  /// Initial/default state
  const factory ProjectState.initial() = Initial;

  /// Data is loading state
  const factory ProjectState.loading() = Loading;

  /// Error when loading data state
  const factory ProjectState.error([String? message]) = Error;
}
