// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobFreezed _$JobFreezedFromJson(Map<String, dynamic> json) {
  return _JobFreezed.fromJson(json);
}

/// @nodoc
class _$JobFreezedTearOff {
  const _$JobFreezedTearOff();

  _JobFreezed call({String title = 'Software Engineer', required int level}) {
    return _JobFreezed(
      title: title,
      level: level,
    );
  }

  JobFreezed fromJson(Map<String, Object?> json) {
    return JobFreezed.fromJson(json);
  }
}

/// @nodoc
const $JobFreezed = _$JobFreezedTearOff();

/// @nodoc
mixin _$JobFreezed {
  String get title => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobFreezedCopyWith<JobFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobFreezedCopyWith<$Res> {
  factory $JobFreezedCopyWith(
          JobFreezed value, $Res Function(JobFreezed) then) =
      _$JobFreezedCopyWithImpl<$Res>;
  $Res call({String title, int level});
}

/// @nodoc
class _$JobFreezedCopyWithImpl<$Res> implements $JobFreezedCopyWith<$Res> {
  _$JobFreezedCopyWithImpl(this._value, this._then);

  final JobFreezed _value;
  // ignore: unused_field
  final $Res Function(JobFreezed) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$JobFreezedCopyWith<$Res> implements $JobFreezedCopyWith<$Res> {
  factory _$JobFreezedCopyWith(
          _JobFreezed value, $Res Function(_JobFreezed) then) =
      __$JobFreezedCopyWithImpl<$Res>;
  @override
  $Res call({String title, int level});
}

/// @nodoc
class __$JobFreezedCopyWithImpl<$Res> extends _$JobFreezedCopyWithImpl<$Res>
    implements _$JobFreezedCopyWith<$Res> {
  __$JobFreezedCopyWithImpl(
      _JobFreezed _value, $Res Function(_JobFreezed) _then)
      : super(_value, (v) => _then(v as _JobFreezed));

  @override
  _JobFreezed get _value => super._value as _JobFreezed;

  @override
  $Res call({
    Object? title = freezed,
    Object? level = freezed,
  }) {
    return _then(_JobFreezed(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobFreezed with DiagnosticableTreeMixin implements _JobFreezed {
  const _$_JobFreezed({this.title = 'Software Engineer', required this.level});

  factory _$_JobFreezed.fromJson(Map<String, dynamic> json) =>
      _$$_JobFreezedFromJson(json);

  @JsonKey()
  @override
  final String title;
  @override
  final int level;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JobFreezed(title: $title, level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JobFreezed'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobFreezed &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$JobFreezedCopyWith<_JobFreezed> get copyWith =>
      __$JobFreezedCopyWithImpl<_JobFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobFreezedToJson(this);
  }
}

abstract class _JobFreezed implements JobFreezed {
  const factory _JobFreezed({String title, required int level}) = _$_JobFreezed;

  factory _JobFreezed.fromJson(Map<String, dynamic> json) =
      _$_JobFreezed.fromJson;

  @override
  String get title;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$JobFreezedCopyWith<_JobFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}
