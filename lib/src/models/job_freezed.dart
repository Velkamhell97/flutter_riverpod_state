//Ejemplo para una utilizar este freezed en otro freezed
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'job_freezed.freezed.dart';
part 'job_freezed.g.dart';

@freezed
class JobFreezed with _$JobFreezed {
  // @JsonSerializable(explicitToJson: true)
  const factory JobFreezed({
    @Default('Software Engineer') String title,
    required int level
  }) = _JobFreezed;

  //-Para que se pueda deserealizar cuando este en el otro freezeed
  factory JobFreezed.fromJson(Map<String, dynamic> json) => _$JobFreezedFromJson(json);
}

