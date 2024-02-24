import 'package:equatable/equatable.dart';
import 'package:social_app_flutter/blocs/users_bloc.dart';
import 'package:social_app_flutter/repository/users_repo.dart';

abstract class UsersEvents extends Equatable {
}

class UsersLoaderEvent extends UsersEvents {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UsersLoadedEvents extends UsersEvents {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
