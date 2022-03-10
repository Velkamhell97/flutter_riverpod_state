
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';

//-Al parecer en riverpod las clases son inmutables, se realiza un ejercicion muy practico para crear un tipo 
//-de dato de respuesta, todo se suele pasar como un nuevo elemento, en el caso de las listas  se usa el spread
//-para devolver un nuevo arreglo, no se modifica el original
class UserState extends StateNotifier<User?> {
  UserState() : super(null);

  void setUser(User? user){
    state = user;
  }

  void setAge(DateTime birthday){
    if(state != null){
      state = state!.copyWith(birthday: birthday);
    }
  }

  void addProfession(String profession){
    if(state != null){
      final professions = [...state!.professions, profession];
      state = state!.copyWith(professions: professions);
    }
  }
}