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
  return _GoogleEventModel.fromJson(json);
}

/// @nodoc
mixin _$GoogleEventModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get colorId => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get foregroundColor => throw _privateConstructorUsedError;
  String? get calendarId => throw _privateConstructorUsedError;
  String? get recurringEventId => throw _privateConstructorUsedError;
  List<String>? get recurrence => throw _privateConstructorUsedError;
  @EventDateTimeConverter()
  EventDateTimeModel? get originalStartTime =>
      throw _privateConstructorUsedError;
  @EventDateTimeConverter()
  EventDateTimeModel? get start => throw _privateConstructorUsedError;
  @EventDateTimeConverter()
  EventDateTimeModel? get end => throw _privateConstructorUsedError;
  @EventOrganizerConverter()
  @JsonKey(name: 'organizer')
  String? get organizerName => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'summary')
          String? title,
      String? description,
      String? colorId,
      String? backgroundColor,
      String? foregroundColor,
      String? calendarId,
      String? recurringEventId,
      List<String>? recurrence,
      @EventDateTimeConverter()
          EventDateTimeModel? originalStartTime,
      @EventDateTimeConverter()
          EventDateTimeModel? start,
      @EventDateTimeConverter()
          EventDateTimeModel? end,
      @EventOrganizerConverter()
      @JsonKey(name: 'organizer')
          String? organizerName});

  $EventDateTimeModelCopyWith<$Res>? get originalStartTime;
  $EventDateTimeModelCopyWith<$Res>? get start;
  $EventDateTimeModelCopyWith<$Res>? get end;
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
    Object? backgroundColor = freezed,
    Object? foregroundColor = freezed,
    Object? calendarId = freezed,
    Object? recurringEventId = freezed,
    Object? recurrence = freezed,
    Object? originalStartTime = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? organizerName = freezed,
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
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
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
              as EventDateTimeModel?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as EventDateTimeModel?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as EventDateTimeModel?,
      organizerName: organizerName == freezed
          ? _value.organizerName
          : organizerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $EventDateTimeModelCopyWith<$Res>? get originalStartTime {
    if (_value.originalStartTime == null) {
      return null;
    }

    return $EventDateTimeModelCopyWith<$Res>(_value.originalStartTime!,
        (value) {
      return _then(_value.copyWith(originalStartTime: value));
    });
  }

  @override
  $EventDateTimeModelCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $EventDateTimeModelCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $EventDateTimeModelCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $EventDateTimeModelCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$GoogleEventModelCopyWith<$Res>
    implements $GoogleEventModelCopyWith<$Res> {
  factory _$GoogleEventModelCopyWith(
          _GoogleEventModel value, $Res Function(_GoogleEventModel) then) =
      __$GoogleEventModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'summary')
          String? title,
      String? description,
      String? colorId,
      String? backgroundColor,
      String? foregroundColor,
      String? calendarId,
      String? recurringEventId,
      List<String>? recurrence,
      @EventDateTimeConverter()
          EventDateTimeModel? originalStartTime,
      @EventDateTimeConverter()
          EventDateTimeModel? start,
      @EventDateTimeConverter()
          EventDateTimeModel? end,
      @EventOrganizerConverter()
      @JsonKey(name: 'organizer')
          String? organizerName});

  @override
  $EventDateTimeModelCopyWith<$Res>? get originalStartTime;
  @override
  $EventDateTimeModelCopyWith<$Res>? get start;
  @override
  $EventDateTimeModelCopyWith<$Res>? get end;
}

/// @nodoc
class __$GoogleEventModelCopyWithImpl<$Res>
    extends _$GoogleEventModelCopyWithImpl<$Res>
    implements _$GoogleEventModelCopyWith<$Res> {
  __$GoogleEventModelCopyWithImpl(
      _GoogleEventModel _value, $Res Function(_GoogleEventModel) _then)
      : super(_value, (v) => _then(v as _GoogleEventModel));

  @override
  _GoogleEventModel get _value => super._value as _GoogleEventModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? colorId = freezed,
    Object? backgroundColor = freezed,
    Object? foregroundColor = freezed,
    Object? calendarId = freezed,
    Object? recurringEventId = freezed,
    Object? recurrence = freezed,
    Object? originalStartTime = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? organizerName = freezed,
  }) {
    return _then(_GoogleEventModel(
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
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      foregroundColor: foregroundColor == freezed
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
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
              as EventDateTimeModel?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as EventDateTimeModel?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as EventDateTimeModel?,
      organizerName: organizerName == freezed
          ? _value.organizerName
          : organizerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoogleEventModel extends _GoogleEventModel {
  _$_GoogleEventModel(
      {this.id,
      @JsonKey(name: 'summary')
          this.title,
      this.description,
      this.colorId,
      this.backgroundColor,
      this.foregroundColor,
      this.calendarId,
      this.recurringEventId,
      final List<String>? recurrence,
      @EventDateTimeConverter()
          this.originalStartTime,
      @EventDateTimeConverter()
          this.start,
      @EventDateTimeConverter()
          this.end,
      @EventOrganizerConverter()
      @JsonKey(name: 'organizer')
          this.organizerName})
      : _recurrence = recurrence,
        super._();

  factory _$_GoogleEventModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoogleEventModelFromJson(json);

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
  final String? backgroundColor;
  @override
  final String? foregroundColor;
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
  final EventDateTimeModel? originalStartTime;
  @override
  @EventDateTimeConverter()
  final EventDateTimeModel? start;
  @override
  @EventDateTimeConverter()
  final EventDateTimeModel? end;
  @override
  @EventOrganizerConverter()
  @JsonKey(name: 'organizer')
  final String? organizerName;

  @override
  String toString() {
    return 'GoogleEventModel(id: $id, title: $title, description: $description, colorId: $colorId, backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, calendarId: $calendarId, recurringEventId: $recurringEventId, recurrence: $recurrence, originalStartTime: $originalStartTime, start: $start, end: $end, organizerName: $organizerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoogleEventModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.colorId, colorId) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality()
                .equals(other.foregroundColor, foregroundColor) &&
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
            const DeepCollectionEquality()
                .equals(other.organizerName, organizerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(colorId),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(foregroundColor),
      const DeepCollectionEquality().hash(calendarId),
      const DeepCollectionEquality().hash(recurringEventId),
      const DeepCollectionEquality().hash(recurrence),
      const DeepCollectionEquality().hash(originalStartTime),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(organizerName));

  @JsonKey(ignore: true)
  @override
  _$GoogleEventModelCopyWith<_GoogleEventModel> get copyWith =>
      __$GoogleEventModelCopyWithImpl<_GoogleEventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoogleEventModelToJson(this);
  }
}

abstract class _GoogleEventModel extends GoogleEventModel {
  factory _GoogleEventModel(
      {final String? id,
      @JsonKey(name: 'summary')
          final String? title,
      final String? description,
      final String? colorId,
      final String? backgroundColor,
      final String? foregroundColor,
      final String? calendarId,
      final String? recurringEventId,
      final List<String>? recurrence,
      @EventDateTimeConverter()
          final EventDateTimeModel? originalStartTime,
      @EventDateTimeConverter()
          final EventDateTimeModel? start,
      @EventDateTimeConverter()
          final EventDateTimeModel? end,
      @EventOrganizerConverter()
      @JsonKey(name: 'organizer')
          final String? organizerName}) = _$_GoogleEventModel;
  _GoogleEventModel._() : super._();

  factory _GoogleEventModel.fromJson(Map<String, dynamic> json) =
      _$_GoogleEventModel.fromJson;

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
  String? get backgroundColor => throw _privateConstructorUsedError;
  @override
  String? get foregroundColor => throw _privateConstructorUsedError;
  @override
  String? get calendarId => throw _privateConstructorUsedError;
  @override
  String? get recurringEventId => throw _privateConstructorUsedError;
  @override
  List<String>? get recurrence => throw _privateConstructorUsedError;
  @override
  @EventDateTimeConverter()
  EventDateTimeModel? get originalStartTime =>
      throw _privateConstructorUsedError;
  @override
  @EventDateTimeConverter()
  EventDateTimeModel? get start => throw _privateConstructorUsedError;
  @override
  @EventDateTimeConverter()
  EventDateTimeModel? get end => throw _privateConstructorUsedError;
  @override
  @EventOrganizerConverter()
  @JsonKey(name: 'organizer')
  String? get organizerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GoogleEventModelCopyWith<_GoogleEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
