import 'package:equatable/equatable.dart';

import '../model/users_model.dart';

abstract class UsersStates extends Equatable {}

class UsersLoaderStates extends UsersStates {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UsersLoadedStates extends UsersStates {
  final List<UsersModel> userRepo;

  UsersLoadedStates(this.userRepo);

  @override
  // TODO: implement props
  List<Object?> get props => [userRepo];
}
