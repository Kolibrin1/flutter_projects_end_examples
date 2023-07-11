import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_data/cubit/internet_cubit.dart';
import 'package:flutter_bloc_with_data/services/user_repository.dart';

import '../bloc/user_bloc.dart';
import '../widgets/action_buttons.dart';
import '../widgets/user_list.dart';

class HomePage extends StatelessWidget {
  final userRepository = UserRepository();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(userRepository: userRepository),
        ),
        BlocProvider(create: (context) => ConnectionCubit())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<ConnectionCubit, MyConnectionState>(
              builder: ((context, state) => state.connected
                  ? const Text('User List(в сети)')
                  : const Text(
                      'Нет соединения с интернетом!',
                      style: TextStyle(color: Colors.red),
                    ))),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButtons(),
            Expanded(
              child: UserList(),
            ),
          ],
        ),
      ),
    );
  }
}
