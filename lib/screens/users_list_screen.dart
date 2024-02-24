import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_flutter/blocs/users_bloc.dart';
import 'package:social_app_flutter/blocs/users_events.dart';
import 'package:social_app_flutter/blocs/users_state.dart';
import 'package:social_app_flutter/model/users_model.dart';
import 'package:social_app_flutter/repository/users_repo.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>UsersBloc(UsersRepository())..add(UsersLoadedEvents()),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Users'),
          ),
          body: BlocBuilder<UsersBloc, UsersStates>(
            builder: (_,state) {
              if (state is UsersLoaderStates) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is UsersLoadedStates) {
                List<UsersModel> userList = state.userRepo;
                return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (_, index) {
                    return Text(userList[index].name);
                  },
                );
              }
              return const Text('Not loaded');
            },
          )),
    );
  }
}
