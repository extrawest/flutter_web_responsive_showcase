import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_web_training/repository/users_repository.dart';

import '../models/user.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository repository;

  UsersBloc(this.repository) : super(const UsersState()) {
    on<FetchUsersEvent>(_onFetchUsersEvent);
  }

  void _onFetchUsersEvent(FetchUsersEvent event, Emitter<UsersState> emit) async {
    emit(state.copyWith(status: UsersStatus.loading));
    try {
      final users = await repository.getUsers();
      emit(state.copyWith(status: UsersStatus.success, users: users));
    } catch (e) {
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }
}
