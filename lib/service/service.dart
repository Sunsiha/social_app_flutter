import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:social_app_flutter/model/users_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<UsersModel>> fetchUsers() async {
    debugPrint('entering');
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      log('response ${response.body}');
      return usersModelFromJson(response.body);
    } catch (e) {
      debugPrint("Fetch Users: ${e.toString()}");
      return [];
    }
  }
}
