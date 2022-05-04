// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_date_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDateTimeModel _$EventDateTimeModelFromJson(Map<String, dynamic> json) {
  return _EventDateTimeModel.fromJson(json);
}

/// @nodoc
mixin _$EventDateTimeModel {
  DateTime? get date => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDateTimeModelCopyWith<EventDateTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDateTimeModelCopyWith<$Res> {
  factory $EventDateTimeModelCopyWith(
          EventDateTimeModel value, $Res Function(EventDateTimeModel) then) =
      _$EventDateTimeModelCopyWithImpl<$Res>;
  $Res call({DateTime? date, DateTime? dateTime, String? timeZone});
}

/// @nodoc
class _$EventDateTimeModelCopyWithImpl<$Res>
    implements $EventDateTimeModelCopyWith<$Res> {
  _$EventDateTimeModelCopyWithImpl(this._value, this._then);

  final EventDateTimeModel _value;
  // ignore: unused_field
  final $Res Function(EventDateTimeModel) _then;

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
abstract class _$EventDateTimeModelCopyWith<$Res>
    implements $EventDateTimeModelCopyWith<$Res> {
  factory _$EventDateTimeModelCopyWith(
          _EventDateTimeModel value, $Res Function(_EventDateTimeModel) then) =
      __$EventDateTimeModelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? date, DateTime? dateTime, String? timeZone});
}

/// @nodoc
class __$EventDateTimeModelCopyWithImpl<$Res>
    extends _$EventDateTimeModelCopyWithImpl<$Res>
    implements _$EventDateTimeModelCopyWith<$Res> {
  __$EventDateTimeModelCopyWithImpl(
      _EventDateTimeModel _value, $Res Function(_EventDateTimeModel) _then)
      : super(_value, (v) => _then(v as _EventDateTimeModel));

  @override
  _EventDateTimeModel get _value => super._value as _EventDateTimeModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? dateTime = freezed,
    Object? timeZone = freezed,
  }) {
    return _then(_EventDateTimeModel(
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
class _$_EventDateTimeModel implements _EventDateTimeModel {
  _$_EventDateTimeModel({this.date, this.dateTime, this.timeZone});

  factory _$_EventDateTimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventDateTimeModelFromJson(json);

  @override
  final DateTime? date;
  @override
  final DateTime? dateTime;
  @override
  final String? timeZone;

  @override
  String toString() {
    return 'EventDateTimeModel(date: $date, dateTime: $dateTime, timeZone: $timeZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventDateTimeModel &&
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
  _$EventDateTimeModelCopyWith<_EventDateTimeModel> get copyWith =>
      __$EventDateTimeModelCopyWithImpl<_EventDateTimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDateTimeModelToJson(this);
  }
}

abstract class _EventDateTimeModel implements EventDateTimeModel {
  factory _EventDateTimeModel(
      {final DateTime? date,
      final DateTime? dateTime,
      final String? timeZone}) = _$_EventDateTimeModel;

  factory _EventDateTimeModel.fromJson(Map<String, dynamic> json) =
      _$_EventDateTimeModel.fromJson;

  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @override
  String? get timeZone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventDateTimeModelCopyWith<_EventDateTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
