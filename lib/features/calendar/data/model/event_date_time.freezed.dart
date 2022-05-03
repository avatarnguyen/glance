// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_date_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDateTime _$EventDateTimeFromJson(Map<String, dynamic> json) {
  return _EventDateTime.fromJson(json);
}

/// @nodoc
mixin _$EventDateTime {
  DateTime? get date => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDateTimeCopyWith<EventDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDateTimeCopyWith<$Res> {
  factory $EventDateTimeCopyWith(
          EventDateTime value, $Res Function(EventDateTime) then) =
      _$EventDateTimeCopyWithImpl<$Res>;
  $Res call({DateTime? date, DateTime? dateTime, String? timeZone});
}

/// @nodoc
class _$EventDateTimeCopyWithImpl<$Res>
    implements $EventDateTimeCopyWith<$Res> {
  _$EventDateTimeCopyWithImpl(this._value, this._then);

  final EventDateTime _value;
  // ignore: unused_field
  final $Res Function(EventDateTime) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? dateTime = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeZone: timeZone == freezed
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventDateTimeCopyWith<$Res>
    implements $EventDateTimeCopyWith<$Res> {
  factory _$EventDateTimeCopyWith(
          _EventDateTime value, $Res Function(_EventDateTime) then) =
      __$EventDateTimeCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? date, DateTime? dateTime, String? timeZone});
}

/// @nodoc
class __$EventDateTimeCopyWithImpl<$Res>
    extends _$EventDateTimeCopyWithImpl<$Res>
    implements _$EventDateTimeCopyWith<$Res> {
  __$EventDateTimeCopyWithImpl(
      _EventDateTime _value, $Res Function(_EventDateTime) _then)
      : super(_value, (v) => _then(v as _EventDateTime));

  @override
  _EventDateTime get _value => super._value as _EventDateTime;

  @override
  $Res call({
    Object? date = freezed,
    Object? dateTime = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_EventDateTime(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeZone: timeZone == freezed
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDateTime implements _EventDateTime {
  _$_EventDateTime({this.date, this.dateTime, this.timeZone});

  factory _$_EventDateTime.fromJson(Map<String, dynamic> json) =>
      _$$_EventDateTimeFromJson(json);

  @override
  final DateTime? date;
  @override
  final DateTime? dateTime;
  @override
  final String? timeZone;

  @override
  String toString() {
    return 'EventDateTime(date: $date, dateTime: $dateTime, timeZone: $timeZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventDateTime &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.timeZone, timeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(timeZone));

  @JsonKey(ignore: true)
  @override
  _$EventDateTimeCopyWith<_EventDateTime> get copyWith =>
      __$EventDateTimeCopyWithImpl<_EventDateTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDateTimeToJson(this);
  }
}

abstract class _EventDateTime implements EventDateTime {
  factory _EventDateTime(
      {final DateTime? date,
      final DateTime? dateTime,
      final String? timeZone}) = _$_EventDateTime;

  factory _EventDateTime.fromJson(Map<String, dynamic> json) =
      _$_EventDateTime.fromJson;

  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  String? get timeZone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventDateTimeCopyWith<_EventDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}
