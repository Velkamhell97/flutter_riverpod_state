import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_state/src/states/user_state.dart';

import '../models/user.dart';

final userProvider = StateNotifierProvider<UserState, User?>((ref) => UserState());

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/detail'), 
            icon: const Icon(Icons.arrow_forward)
          ),
          IconButton(
            onPressed: () => ref.read(userProvider.notifier).setUser(null), 
            icon: const Icon(Icons.exit_to_app)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: user == null ? const Center(
          child: Text('There is not loaded user')
        ) : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General', style: Theme.of(context).textTheme.titleLarge),
            ListTile(title: Text('Name: ${user.name}')),
            ListTile(title: Text('Age: ${user.age ?? ''}')),

            const SizedBox(height: 10.0),

            Text('Professions', style: Theme.of(context).textTheme.titleLarge),
            for(String profession in user.professions) ListTile(title: Text(profession))
          ],
        )
      )
    );
  }
}