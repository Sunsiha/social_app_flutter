import 'package:social_app_flutter/model/users_model.dart';
import 'package:social_app_flutter/service/service.dart';

class UsersRepository {
  ApiService? service;

  UsersRepository() {
    service = ApiService();
  }

  Future<List<UsersModel>> get fetchUsers async => await service!.fetchUsers();
}

