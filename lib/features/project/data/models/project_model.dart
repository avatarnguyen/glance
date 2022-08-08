import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glance/features/project/domain/models/project.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class FirebaseProjectModel with _$FirebaseProjectModel {
  const FirebaseProjectModel._();

  const factory FirebaseProjectModel({
    String? id,
    String? title,
    String? color,
    String? description,
    int? itemsCount,
    List<String>? linkedCalendarId,
  }) = _FirebaseProjectModel;

  Project toEntity() => Project(
        id: id,
        title: title,
        color: color,
        description: description,
        itemsCount: itemsCount,
        linkedCalendarId: linkedCalendarId,
      );

  factory FirebaseProjectModel.fromEntity(Project project) {
    return FirebaseProjectModel(
      id: project.id,
      title: project.title,
      color: project.color,
      description: project.description,
      itemsCount: project.itemsCount,
      linkedCalendarId: project.linkedCalendarId,
    );
  }

  factory FirebaseProjectModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseProjectModelFromJson(json);
}
