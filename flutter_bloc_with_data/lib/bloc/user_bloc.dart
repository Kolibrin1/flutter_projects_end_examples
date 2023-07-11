import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_data/bloc/user_event.dart';
import 'package:flutter_bloc_with_data/bloc/user_state.dart';
import 'package:flutter_bloc_with_data/services/user_repository.dart';

import '../model/user.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  UserBloc({required this.userRepository}) : super(UserEmptyState()) {
    on<UserLOadEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final List<User> loadedUserList = await userRepository.getAllUsers();
        emit(UserLoadedState(loadedUser: loadedUserList));
      } catch (_) {
        emit(UserErrorState());
      }
    });
    on<UserClearEvent>((event, emit) async {
      emit(UserEmptyState());
    });
  }
}
