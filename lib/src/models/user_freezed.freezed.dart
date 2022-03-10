// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFreezed _$UserFreezedFromJson(Map<String, dynamic> json) {
  return _UserFreezed.fromJson(json);
}

/// @nodoc
class _$UserFreezedTearOff {
  const _$UserFreezedTearOff();

  _UserFreezed call(
      {required String name,
      required String email,
      int? age,
      bool isActive = true,
      required List<JobFreezed> jobs}) {
    return _UserFreezed(
      name: name,
      email: email,
      age: age,
      isActive: isActive,
      jobs: jobs,
    );
  }

  UserFreezed fromJson(Map<String, Object?> json) {
    return UserFreezed.fromJson(json);
  }
}

/// @nodoc
const $UserFreezed = _$UserFreezedTearOff();

/// @nodoc
mixin _$UserFreezed {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<JobFreezed> get jobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFreezedCopyWith<UserFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFreezedCopyWith<$Res> {
  factory $UserFreezedCopyWith(
          UserFreezed value, $Res Function(UserFreezed) then) =
      _$UserFreezedCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      int? age,
      bool isActive,
      List<JobFreezed> jobs});
}

/// @nodoc
class _$UserFreezedCopyWithImpl<$Res> implements $UserFreezedCopyWith<$Res> {
  _$UserFreezedCopyWithImpl(this._value, this._then);

  final UserFreezed _value;
  // ignore: unused_field
  final $Res Function(UserFreezed) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isActive = freezed,
    Object? jobs = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobFreezed>,
    ));
  }
}

/// @nodoc
abstract class _$UserFreezedCopyWith<$Res>
    implements $UserFreezedCopyWith<$Res> {
  factory _$UserFreezedCopyWith(
          _UserFreezed value, $Res Function(_UserFreezed) then) =
      __$UserFreezedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      int? age,
      bool isActive,
      List<JobFreezed> jobs});
}

/// @nodoc
class __$UserFreezedCopyWithImpl<$Res> extends _$UserFreezedCopyWithImpl<$Res>
    implements _$UserFreezedCopyWith<$Res> {
  __$UserFreezedCopyWithImpl(
      _UserFreezed _value, $Res Function(_UserFreezed) _then)
      : super(_value, (v) => _then(v as _UserFreezed));

  @override
  _UserFreezed get _value => super._value as _UserFreezed;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? age = freezed,
    Object? isActive = freezed,
    Object? jobs = freezed,
  }) {
    return _then(_UserFreezed(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      jobs: jobs == freezed
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<JobFreezed>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserFreezed extends _UserFreezed with DiagnosticableTreeMixin {
  const _$_UserFreezed(
      {required this.name,
      required this.email,
      this.age,
      this.isActive = true,
      required this.jobs})
      : super._();

  factory _$_UserFreezed.fromJson(Map<String, dynamic> json) =>
      _$$_UserFreezedFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final int? age;
  @JsonKey()
  @override
  final bool isActive;
  @override
  final List<JobFreezed> jobs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFreezed(name: $name, email: $email, age: $age, isActive: $isActive, jobs: $jobs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFreezed'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('jobs', jobs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserFreezed &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.jobs, jobs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(jobs));

  @JsonKey(ignore: true)
  @override
  _$UserFreezedCopyWith<_UserFreezed> get copyWith =>
      __$UserFreezedCopyWithImpl<_UserFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFreezedToJson(this);
  }
}

abstract class _UserFreezed extends UserFreezed {
  const factory _UserFreezed(
      {required String name,
      required String email,
      int? age,
      bool isActive,
      required List<JobFreezed> jobs}) = _$_UserFreezed;
  const _UserFreezed._() : super._();

  factory _UserFreezed.fromJson(Map<String, dynamic> json) =
      _$_UserFreezed.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  int? get age;
  @override
  bool get isActive;
  @override
  List<JobFreezed> get jobs;
  @override
  @JsonKey(ignore: true)
  _$UserFreezedCopyWith<_UserFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}
