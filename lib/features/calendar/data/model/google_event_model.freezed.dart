// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'google_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoogleEventModel _$GoogleEventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$GoogleEventModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get colorId => throw _privateConstructorUsedError;
  String? get calendarId => throw _privateConstructorUsedError;
  String? get recurringEventId => throw _privateConstructorUsedError;
  List<String>? get recurrence => throw _privateConstructorUsedError;
  @EventDateTimeConverter()
  EventDateTime? get originalStartTime => throw _privateConstructorUsedError;
  @EventDateTimeConverter()
  EventDateTime? get start => throw _privateConstructorUsedError;
  @EventDateTimeConverter()
  EventDateTime? get end => throw _privateConstructorUsedError;
  String? get organizer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleEventModelCopyWith<GoogleEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleEventModelCopyWith<$Res> {
  factory $GoogleEventModelCopyWith(
          GoogleEventModel value, $Res Function(GoogleEventModel) then) =
      _$GoogleEventModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'summary') String? title,
      String? description,
      String? colorId,
      String? calendarId,
      String? recurringEventId,
      List<String>? recurrence,
      @EventDateTimeConverter() EventDateTime? originalStartTime,
      @EventDateTimeConverter() EventDateTime? start,
      @EventDateTimeConverter() EventDateTime? end,
      String? organizer});

  $EventDateTimeCopyWith<$Res>? get originalStartTime;
  $EventDateTimeCopyWith<$Res>? get start;
  $EventDateTimeCopyWith<$Res>? get end;
}

/// @nodoc
class _$GoogleEventModelCopyWithImpl<$Res>
    implements $GoogleEventModelCopyWith<$Res> {
  _$GoogleEventModelCopyWithImpl(this._value, this._then);

  final GoogleEventModel _value;
  // ignore: unused_field
  final $Res Function(GoogleEventModel) _then;

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
    Object? organizer = freezed,
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
              as EventDateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as EventDateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as EventDateTime?,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $EventDateTimeCopyWith<$Res>? get originalStartTime {
    if (_value.originalStartTime == null) {
      return null;
    }

    return $EventDateTimeCopyWith<$Res>(_value.originalStartTime!, (value) {
      return _then(_value.copyWith(originalStartTime: value));
    });
  }

  @override
  $EventDateTimeCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $EventDateTimeCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $EventDateTimeCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $EventDateTimeCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$EventModelCopyWith<$Res>
    implements $GoogleEventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(
          _EventModel value, $Res Function(_EventModel) then) =
      __$EventModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'summary') String? title,
      String? description,
      String? colorId,
      String? calendarId,
      String? recurringEventId,
      List<String>? recurrence,
      @EventDateTimeConverter() EventDateTime? originalStartTime,
      @EventDateTimeConverter() EventDateTime? start,
      @EventDateTimeConverter() EventDateTime? end,
      String? organizer});

  @override
  $EventDateTimeCopyWith<$Res>? get originalStartTime;
  @override
  $EventDateTimeCopyWith<$Res>? get start;
  @override
  $EventDateTimeCopyWith<$Res>? get end;
}

/// @nodoc
class __$EventModelCopyWithImpl<$Res>
    extends _$GoogleEventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(
      _EventModel _value, $Res Function(_EventModel) _then)
      : super(_value, (v) => _then(v as _EventModel));

  @override
  _EventModel get _value => super._value as _EventModel;

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
    Object? organizer = freezed,
  }) {
    return _then(_EventModel(
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
              as EventDateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as EventDateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as EventDateTime?,
      organizer: organizer == freezed
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventModel extends _EventModel {
  _$_EventModel(
      {this.id,
      @JsonKey(name: 'summary') this.title,
      this.description,
      this.colorId,
      this.calendarId,
      this.recurringEventId,
      final List<String>? recurrence,
      @EventDateTimeConverter() this.originalStartTime,
      @EventDateTimeConverter() this.start,
      @EventDateTimeConverter() this.end,
      this.organizer})
      : _recurrence = recurrence,
        super._();

  factory _$_EventModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'summary')
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
  @EventDateTimeConverter()
  final EventDateTime? originalStartTime;
  @override
  @EventDateTimeConverter()
  final EventDateTime? start;
  @override
  @EventDateTimeConverter()
  final EventDateTime? end;
  @override
  final String? organizer;

  @override
  String toString() {
    return 'GoogleEventModel(id: $id, title: $title, description: $description, colorId: $colorId, calendarId: $calendarId, recurringEventId: $recurringEventId, recurrence: $recurrence, originalStartTime: $originalStartTime, start: $start, end: $end, organizer: $organizer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventModel &&
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
            const DeepCollectionEquality().equals(other.organizer, organizer));
  }

  @JsonKey(ignore: true)
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
      const DeepCollectionEquality().hash(organizer));

  @JsonKey(ignore: true)
  @override
  _$EventModelCopyWith<_EventModel> get copyWith =>
      __$EventModelCopyWithImpl<_EventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventModelToJson(this);
  }
}

abstract class _EventModel extends GoogleEventModel {
  factory _EventModel(
      {final String? id,
      @JsonKey(name: 'summary') final String? title,
      final String? description,
      final String? colorId,
      final String? calendarId,
      final String? recurringEventId,
      final List<String>? recurrence,
      @EventDateTimeConverter() final EventDateTime? originalStartTime,
      @EventDateTimeConverter() final EventDateTime? start,
      @EventDateTimeConverter() final EventDateTime? end,
      final String? organizer}) = _$_EventModel;
  _EventModel._() : super._();

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$_EventModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'summary')
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
  @EventDateTimeConverter()
  EventDateTime? get originalStartTime => throw _privateConstructorUsedError;
  @override
  @EventDateTimeConverter()
  EventDateTime? get start => throw _privateConstructorUsedError;
  @override
  @EventDateTimeConverter()
  EventDateTime? get end => throw _privateConstructorUsedError;
  @override
  String? get organizer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventModelCopyWith<_EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
