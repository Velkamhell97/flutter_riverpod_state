//Ejemplo freezed para union de tipos
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

//despues se crea
part 'create_profile_state.freezed.dart';

//-Este ejemplo es para la creacion de clases sealed o uniones
@freezed
class CreateProfileState with _$CreateProfileState {
  const factory CreateProfileState.noError() = _NoError;
  const factory CreateProfileState.error(String errorText) = _Error;
  const factory CreateProfileState.loading() = _Loading;
}
