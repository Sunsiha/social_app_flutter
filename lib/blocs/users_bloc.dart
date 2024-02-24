import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_flutter/blocs/users_events.dart';
import 'package:social_app_flutter/blocs/users_state.dart';
import 'package:social_app_flutter/model/users_model.dart';
import 'package:social_app_flutter/repository/users_repo.dart';

class UsersBloc extends Bloc<UsersEvents, UsersStates> {
  UsersRepository? usersRepository;

  UsersBloc(this.usersRepository) : super(UsersLoaderStates()) {
    on<UsersLoadedEvents>((state, emit) async {
      emit(UsersLoaderStates());
      await Future.delayed(const Duration(seconds: 2));
      List<UsersModel> usersData = await usersRepository!.fetchUsers;
      emit(UsersLoadedStates(usersData));
    });
  }
}
