
// import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state/src/models/create_profile_state.dart';
import 'package:riverpod_state/src/models/user.dart';

class DataStorage {
  Future<void> createProfile(User user) async {
    //create profile
  }

  Future<bool> profileExistWithName(String name) async{
    //check existing name
    return name == 'Daniel';
  }
}

//-Clase abstaracta principal, esta es una forma de crear un type de tipo union como typescript
// abstract class CreateProfileState {}

//-El no error y el loading no tienen mensaje de error
//class CreateProfileStateNoError extends CreateProfileState {}

//-Toda clase abstracta puede tener su constructos y metodos propios pero tiene que implementar los de la clase padre
// class CreateProfileStateError extends CreateProfileState {
//   final String errorText;
//   CreateProfileStateError(this.errorText);
// }

//class CreateProfileStateLoading extends CreateProfileState {}

//ejemplo de como actua como un uniontype con abstarct class
// void printState(CreateProfileState state){
//   if(state is CreateProfileStateNoError){
//     print('No Error');
//   } else if(state is CreateProfileStateError){
//     print('Error: ${state.errorText}');
//   } else if(state is CreateProfileStateLoading){
//     print('Loading');
//   }
// }

//Ahora como funciona un unionType con freezed
// void printState(CreateProfileState state){
//   print(state.when(
//     noError: () => 'no error',
//     error: (errorText) => 'error $errorText',
//     loading: () => 'loading')
//   );
// }

//-Primero se inicia con change notifier (notifyListener)
//-Luego cambiamos por el StateNotifier, que almacena el estado de una variable
class CreateProfileModel extends StateNotifier<CreateProfileState> {
  final DataStorage dataStore;

  CreateProfileModel({required this.dataStore}) : super(const CreateProfileState.noError());

  //-Lo primero que se corrige es que no puedan modificarse estos estados mediante asignacion, luego se reemplazan
  //-los esdaos de loading y error por estados de clase (aqui entra las clases abstractas y el paquete freeze)
  // bool _isLoading = false;
  // bool get isLoading => _isLoading;

  // String? _errorText;
  // String? get errorText => _errorText;

  //-Se cambia el loading y error por la clase union freezed

  Future<bool> submit(String name) async {
    if(name.isEmpty){
      // _errorText = 'Name can\'t be empty';
      state = const CreateProfileState.error('Name can\'t be empty'); //Al cambiarlo ya es como usar el notifylistener
      // notifyListeners();
      return false;
    }

    final nameExist = await dataStore.profileExistWithName(name);

    if(nameExist){
      // _errorText = 'Name already taken';
      print('entre');
      state = const CreateProfileState.error('Name already taken');
      // notifyListeners();
      return false;
    }

    // _isLoading = true;
    state = const CreateProfileState.loading();
    // notifyListeners();

    try {
      await dataStore.createProfile(User(name: name));
      // _errorText = null;
      state  = const CreateProfileState.noError();
      // notifyListeners();
      return true;
    } catch (e) {
      // _errorText = e.toString();
      state = CreateProfileState.error(e.toString());
      // notifyListeners();
      return false;
    } finally {
      // _isLoading = false
    }
  }
}