//Ejemplo para una clase y sus helpers
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_state/src/models/job_freezed.dart';

//despues se crea
part 'user_freezed.freezed.dart';
//-Para los que no sean union type se required esto (al parecer)
part 'user_freezed.g.dart'; //necesario para el fromjson


@freezed
class UserFreezed with _$UserFreezed {
  //-Necesario para crear metodos dentro de esta clase freezed
  const UserFreezed._();

  //modelo de la clase, notar como se ponen los valores por defecto, esto se coloca para serializar listas anidadas (jobs)
  @JsonSerializable(explicitToJson: true)
  const factory UserFreezed({
    required String name,
    required String email,
    int? age,
    @Default(true) bool isActive,
    required List<JobFreezed> jobs,
  }) = _UserFreezed;

  //-Para obtener los metodos fromjson
  factory UserFreezed.fromJson(Map<String, dynamic> json) => _$UserFreezedFromJson(json);

  void myMethod(){
    print('My Method');
  }
}