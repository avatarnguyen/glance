import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    String? id,
    String? title,
    String? color,
    String? description,
    int? itemsCount,
    List<String>? linkedCalendarId,
  }) = _Project;
}
