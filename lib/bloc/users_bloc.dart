import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const UsersState()) {
    on<FetchUsersEvent>(_onFetchUsersEvent);
  }

  void _onFetchUsersEvent(FetchUsersEvent event, Emitter<UsersState> emit) {
    emit(state.copyWith(status: UsersStatus.loading));
  }
}
