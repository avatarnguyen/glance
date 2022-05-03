// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Event {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get colorId => throw _privateConstructorUsedError;
  String? get calendarId => throw _privateConstructorUsedError;
  String? get recurringEventId => throw _privateConstructorUsedError;
  List<String>? get recurrence => throw _privateConstructorUsedError;
  DateTime? get originalStartTime =>
      throw _privateConstructorUsedError; // should be in  "yyyy-mm-dd" format if this is an all-day event
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  bool? get allDay => throw _privateConstructorUsedError;
  String? get organizer => throw _privateConstructorUsedError;
  String? get timeZone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? colorId,
      String? calendarId,
      String? recurringEventId,
      List<String>? recurrence,
      DateTime? originalStartTime,
      DateTime? start,
      DateTime? end,
      bool? allDay,
      String? organizer,
      String? timeZone});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? colorId = freezed,
    Object? calendarId = freezed,
    Object? recurringEventId = freezed,
    Object? recurrence = freezed,
    Object? originalStartTime = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? allDay = freezed,
    Object? organizer = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: colorId == freezed
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      calendarId: calendarId == freezed
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String?,
      recurringEventId: recurringEventId == freezed
          ? _value.recurringEventId
          : recurringEventId // ignore: cast_nullable_to_non_nullable
              as String?,
      recurrence: recurrence == freezed
          ? _value.recurrence
          : recurrence // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalStartTime: originalStartTime == freezed
          ? _value.originalStartTime
          : originalStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allDay: allDay == freezed
          ? _value.allDay
          : allDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: timeZone == freezed
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? colorId,
      String? calendarId,
      String? recurringEventId,
      List<String>? recurrence,
      DateTime? originalStartTime,
      DateTime? start,
      DateTime? end,
      bool? allDay,
      String? organizer,
      String? timeZone});
}

/// @nodoc
class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? colorId = freezed,
    Object? calendarId = freezed,
    Object? recurringEventId = freezed,
    Object? recurrence = freezed,
    Object? originalStartTime = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? allDay = freezed,
    Object? organizer = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_Event(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: colorId == freezed
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      calendarId: calendarId == freezed
          ? _value.calendarId
          : calendarId // ignore: cast_nullable_to_non_nullable
              as String?,
      recurringEventId: recurringEventId == freezed
          ? _value.recurringEventId
          : recurringEventId // ignore: cast_nullable_to_non_nullable
              as String?,
      recurrence: recurrence == freezed
          ? _value.recurrence
          : recurrence // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalStartTime: originalStartTime == freezed
          ? _value.originalStartTime
          : originalStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allDay: allDay == freezed
          ? _value.allDay
          : allDay // ignore: cast_nullable_to_non_nullable
              as bool?,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZone: timeZone == freezed
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Event implements _Event {
  _$_Event(
      {this.id,
      this.title,
      this.description,
      this.colorId,
      this.calendarId,
      this.recurringEventId,
      final List<String>? recurrence,
      this.originalStartTime,
      this.start,
      this.end,
      this.allDay,
      this.organizer,
      this.timeZone})
      : _recurrence = recurrence;

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? colorId;
  @override
  final String? calendarId;
  @override
  final String? recurringEventId;
  final List<String>? _recurrence;
  @override
  List<String>? get recurrence {
    final value = _recurrence;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? originalStartTime;
// should be in  "yyyy-mm-dd" format if this is an all-day event
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final bool? allDay;
  @override
  final String? organizer;
  @override
  final String? timeZone;

  @override
  String toString() {
    return 'Event(id: $id, title: $title, description: $description, colorId: $colorId, calendarId: $calendarId, recurringEventId: $recurringEventId, recurrence: $recurrence, originalStartTime: $originalStartTime, start: $start, end: $end, allDay: $allDay, organizer: $organizer, timeZone: $timeZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Event &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.colorId, colorId) &&
            const DeepCollectionEquality()
                .equals(other.calendarId, calendarId) &&
            const DeepCollectionEquality()
                .equals(other.recurringEventId, recurringEventId) &&
            const DeepCollectionEquality()
                .equals(other.recurrence, recurrence) &&
            const DeepCollectionEquality()
                .equals(other.originalStartTime, originalStartTime) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.allDay, allDay) &&
            const DeepCollectionEquality().equals(other.organizer, organizer) &&
            const DeepCollectionEquality().equals(other.timeZone, timeZone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(colorId),
      const DeepCollectionEquality().hash(calendarId),
      const DeepCollectionEquality().hash(recurringEventId),
      const DeepCollectionEquality().hash(recurrence),
      const DeepCollectionEquality().hash(originalStartTime),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(allDay),
      const DeepCollectionEquality().hash(organizer),
      const DeepCollectionEquality().hash(timeZone));

  @JsonKey(ignore: true)
  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);
}

abstract class _Event implements Event {
  factory _Event(
      {final String? id,
      final String? title,
      final String? description,
      final String? colorId,
      final String? calendarId,
      final String? recurringEventId,
      final List<String>? recurrence,
      final DateTime? originalStartTime,
      final DateTime? start,
      final DateTime? end,
      final bool? allDay,
      final String? organizer,
      final String? timeZone}) = _$_Event;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get colorId => throw _privateConstructorUsedError;
  @override
  String? get calendarId => throw _privateConstructorUsedError;
  @override
  String? get recurringEventId => throw _privateConstructorUsedError;
  @override
  List<String>? get recurrence => throw _privateConstructorUsedError;
  @override
  DateTime? get originalStartTime => throw _privateConstructorUsedError;
  @override // should be in  "yyyy-mm-dd" format if this is an all-day event
  DateTime? get start => throw _privateConstructorUsedError;
  @override
  DateTime? get end => throw _privateConstructorUsedError;
  @override
  bool? get allDay => throw _privateConstructorUsedError;
  @override
  String? get organizer => throw _privateConstructorUsedError;
  @override
  String? get timeZone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventCopyWith<_Event> get copyWith => throw _privateConstructorUsedError;
}
