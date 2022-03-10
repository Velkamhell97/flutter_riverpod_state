import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state/src/models/create_profile_model.dart';
import 'package:riverpod_state/src/models/create_profile_state.dart';
import 'package:riverpod_state/src/models/job_freezed.dart';
import 'package:riverpod_state/src/models/user_freezed.dart';

//-Primero con el ChangeNotifier
// final createProfileProvider = ChangeNotifierProvider<CreateProfileModel>((ref) => CreateProfileModel(DataStorage()));

//-Ahora con el stateNotifier
final createProfileProvider = StateNotifierProvider<CreateProfileModel, CreateProfileState>((ref) => CreateProfileModel(dataStore: DataStorage()));

//-Tambien podemos definir el consumer en un stafull widget
class FreezedExample extends ConsumerStatefulWidget {
  const FreezedExample({Key? key}) : super(key: key);

  @override
  _FreezedExampleState createState() => _FreezedExampleState();
}

class _FreezedExampleState extends ConsumerState<FreezedExample> {
  final _controller = TextEditingController();

  Future<void> _submit(String name) async {
    // final success = await model.submit(name); //En un inicio se pedia el modelo por parametros
    //-Notar como, a pesar de estar escuchando un estado en especifico, aun podemos acceder a la clase
    //-para utilizar sus otros metodos
    final model = ref.read(createProfileProvider.notifier);
    final success = await model.submit(name);

    if(success){
      // Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    // final model = ref.watch(createProfileProvider);
    final state = ref.watch(createProfileProvider);

    const userFreezed = UserFreezed(name: 'Daniel', email: 'daniel@gmail.com', jobs: [JobFreezed(level: 2)]);

    //-Cuenta con todos los metodos del freezed
    print(userFreezed);
    userFreezed.myMethod();

    //-Define un valor para diferentes estados
    final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);
    final errorText = state.maybeWhen(error: (errorText) => errorText, orElse: () => null);

    print(state.when(
      noError: () => 'no error',
      error: (errorText) => 'error $errorText',
      loading: () => 'loading')
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Profile'),
        actions: [
          TextButton(
            // onPressed: model.isLoading ? null : () => _submit(model, _controller.value.text), 
            onPressed: isLoading ? null : () => _submit(_controller.value.text), 
            child: const Text('Save', style: TextStyle(color: Colors.white))
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(errorText: errorText),
            onSubmitted: (name) => isLoading ? null : _submit(name),
          ),
        ),
      ),
    );
  }
}