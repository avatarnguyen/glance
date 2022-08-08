// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseProjectModel _$FirebaseProjectModelFromJson(Map<String, dynamic> json) {
  return _FirebaseProjectModel.fromJson(json);
}

/// @nodoc
mixin _$FirebaseProjectModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get itemsCount => throw _privateConstructorUsedError;
  List<String>? get linkedCalendarId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseProjectModelCopyWith<FirebaseProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseProjectModelCopyWith<$Res> {
  factory $FirebaseProjectModelCopyWith(FirebaseProjectModel value,
          $Res Function(FirebaseProjectModel) then) =
      _$FirebaseProjectModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? color,
      String? description,
      int? itemsCount,
      List<String>? linkedCalendarId});
}

/// @nodoc
class _$FirebaseProjectModelCopyWithImpl<$Res>
    implements $FirebaseProjectModelCopyWith<$Res> {
  _$FirebaseProjectModelCopyWithImpl(this._value, this._then);

  final FirebaseProjectModel _value;
  // ignore: unused_field
  final $Res Function(FirebaseProjectModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? itemsCount = freezed,
    Object? linkedCalendarId = freezed,
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
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      linkedCalendarId: linkedCalendarId == freezed
          ? _value.linkedCalendarId
          : linkedCalendarId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseProjectModelCopyWith<$Res>
    implements $FirebaseProjectModelCopyWith<$Res> {
  factory _$FirebaseProjectModelCopyWith(_FirebaseProjectModel value,
          $Res Function(_FirebaseProjectModel) then) =
      __$FirebaseProjectModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? color,
      String? description,
      int? itemsCount,
      List<String>? linkedCalendarId});
}

/// @nodoc
class __$FirebaseProjectModelCopyWithImpl<$Res>
    extends _$FirebaseProjectModelCopyWithImpl<$Res>
    implements _$FirebaseProjectModelCopyWith<$Res> {
  __$FirebaseProjectModelCopyWithImpl(
      _FirebaseProjectModel _value, $Res Function(_FirebaseProjectModel) _then)
      : super(_value, (v) => _then(v as _FirebaseProjectModel));

  @override
  _FirebaseProjectModel get _value => super._value as _FirebaseProjectModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? itemsCount = freezed,
    Object? linkedCalendarId = freezed,
  }) {
    return _then(_FirebaseProjectModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      linkedCalendarId: linkedCalendarId == freezed
          ? _value.linkedCalendarId
          : linkedCalendarId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseProjectModel extends _FirebaseProjectModel {
  const _$_FirebaseProjectModel(
      {this.id,
      this.title,
      this.color,
      this.description,
      this.itemsCount,
      final List<String>? linkedCalendarId})
      : _linkedCalendarId = linkedCalendarId,
        super._();

  factory _$_FirebaseProjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseProjectModelFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? color;
  @override
  final String? description;
  @override
  final int? itemsCount;
  final List<String>? _linkedCalendarId;
  @override
  List<String>? get linkedCalendarId {
    final value = _linkedCalendarId;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FirebaseProjectModel(id: $id, title: $title, color: $color, description: $description, itemsCount: $itemsCount, linkedCalendarId: $linkedCalendarId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseProjectModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.itemsCount, itemsCount) &&
            const DeepCollectionEquality()
                .equals(other.linkedCalendarId, linkedCalendarId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(itemsCount),
      const DeepCollectionEquality().hash(linkedCalendarId));

  @JsonKey(ignore: true)
  @override
  _$FirebaseProjectModelCopyWith<_FirebaseProjectModel> get copyWith =>
      __$FirebaseProjectModelCopyWithImpl<_FirebaseProjectModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirebaseProjectModelToJson(this);
  }
}

abstract class _FirebaseProjectModel extends FirebaseProjectModel {
  const factory _FirebaseProjectModel(
      {final String? id,
      final String? title,
      final String? color,
      final String? description,
      final int? itemsCount,
      final List<String>? linkedCalendarId}) = _$_FirebaseProjectModel;
  const _FirebaseProjectModel._() : super._();

  factory _FirebaseProjectModel.fromJson(Map<String, dynamic> json) =
      _$_FirebaseProjectModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get itemsCount => throw _privateConstructorUsedError;
  @override
  List<String>? get linkedCalendarId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseProjectModelCopyWith<_FirebaseProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
