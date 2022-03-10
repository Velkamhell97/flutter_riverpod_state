// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserFreezed _$$_UserFreezedFromJson(Map<String, dynamic> json) =>
    _$_UserFreezed(
      name: json['name'] as String,
      email: json['email'] as String,
      age: json['age'] as int?,
      isActive: json['isActive'] as bool? ?? true,
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => JobFreezed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserFreezedToJson(_$_UserFreezed instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'isActive': instance.isActive,
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };
