import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state/src/pages/frezeed_example.dart';

// import 'package:riverpod_state/src/pages/detail_page.dart';
// import 'package:riverpod_state/src/pages/home_page.dart';

//-Con riverpod envolvemos nuestra app con un providerScope
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

//-Parece que este tipo de providers solo nos sirven para manejar valores o instancias pero no modificar el estado (no redibuja)
// final darkTheme = Provider(_create)

//-Este provider del riverpod maneja principamente tipos de datos nativos, string, bool, enum etc, si puede redibujar
final themeProvider = StateProvider<bool>((ref) => false);

//-Debemos definir el StateNotifier y el tipo
final counterProvider = StateNotifierProvider<CounterState, int>((ref) => CounterState());

//-Este vendria siendo como el changeNotifier del provider, aqui se hace con un tipo de dato nativo
class CounterState extends StateNotifier<int> {
  CounterState() : super(0) { //-El super es el valor inicial
    //Constructor
  }

  void increment() => state++;
}

//-En riverpod se separa bastante la logica y se busca que cada notifier sea de un valor primitivo o de una clase
//-con muy pocas variables, no como una clase de provider en la que se puede colocar todo en esta
//-aqui se busca centralizar mucho la logica de cada notifier, por eso flexibiliza mucho el uso de providers compartidos
//-como el siguiente ejemplo
final provider = Provider((ref) {
  // use ref to obtain other providers
  // final repository = ref.watch(repositoryProvider);

  // return SomeValue(repository);
});

//-Se obtiene la referencia de un provider para injectarlo en otro, tener en cuenta que aqui escuchamos los cambios
//-del otro provider, por lo que si este cambia, tambien lo hara el otro
final weatherProvider = FutureProvider((ref) async {
  // We use `ref.watch` to listen to another provider, and we pass it the provider
  // that we want to consume. Here: cityProvider
  // final city = ref.watch(cityProvider);

  // We can then use the result to do something based on the value of `cityProvider`.
  // return fetchWeather(city: city);
});

//-Se pueden hacer otras cosas como crear un provider que escuche cambios de otros y se actualice inmediatamente
//-o hasta pasar el provider read a constructores de clase para que utilicen este valor siempre actualizado


//-Los widgets que escuchan se vuelven consumerWidget
class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider); //El watch se suscribe a los cambios

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Riverpod App'),
      //     actions: [
      //       IconButton(
      //         onPressed: () {
      //           //-A pesar de que el read es para escuchar, parece que el provider.state tambien escucha
      //           // ref.read(themeProvider.state).state = !isDark;

      //           //-En cambio el provider.notifier solo modifica
      //           ref.read(themeProvider.notifier).state = !isDark;

      //           //-Forma de utiizar el valor anterior del state
      //           // ref.read(themeProvider.notifier).update((state) => !state);
      //         },
      //         icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
      //       )
      //     ],
      //   ),
      //   body: Center(
      //     child: Consumer(
      //       builder: (context, ref, child) {
      //         //-El consumer permite poner a escuchar solo un widget en especifico
      //         final counter = ref.watch(counterProvider);

      //         return Text(
      //           '$counter', 
      //           style: Theme.of(context).textTheme.headline4
      //         );
      //       },
      //     ),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       ref.read(counterProvider.notifier).increment();
      //     },
      //     child: const Icon(Icons.add),
      //   ),
      // ),
      home: FreezedExample(),
      // initialRoute: '/home',
      // routes: {
      //   '/home': (_) => const HomePage(),
      //   '/detail': (_) => const DetailPage(),
      // },
    );
  }
}
