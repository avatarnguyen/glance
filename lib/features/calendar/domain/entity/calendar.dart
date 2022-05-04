import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar.freezed.dart';

@freezed
class Calendar with _$Calendar {
  factory Calendar({
    String? id,
    String? name,
    String? description,
    String? backgroundColor,
    String? foregroundColor,
    String? accountName,
    bool? isDefault,
    bool? selected,
    bool? deleted,
    String? timeZone,
  }) = _Calendar;
}
