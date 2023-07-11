import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_data/bloc/user_event.dart';

import '../bloc/user_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // final UserBloc _userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    final UserBloc _userBloc =
        context.read<UserBloc>(); // используется только в callback(кнопки)
    // final UserBloc _userBloc = BlocProvider.of<UserBloc>(context, listen: true);
    // final UserBloc _userBloc =
    //     context.watch<UserBloc>(); // используется только в методе build()
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () {
            _userBloc.add(UserLOadEvent());
          },
          child: Text('Load'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
        SizedBox(
          width: 8,
        ),
        ElevatedButton(
          onPressed: () {
            _userBloc.add(UserClearEvent());
          },
          child: Text('Clear'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
      ],
    );
  }
}
