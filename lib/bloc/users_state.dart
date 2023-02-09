part of 'users_bloc.dart';

enum UsersStatus { initial, loading, success, failure }

class UsersState extends Equatable {
  final UsersStatus status;
  final List<User> users;

  const UsersState({
    this.status = UsersStatus.initial,
    this.users = const [],
  });

  UsersState copyWith({
    UsersStatus? status,
    List<User>? users,
  }) {
    return UsersState(
      status: status ?? this.status,
      users: users ?? this.users,
    );
  }

  @override List<Object> get props => [status, users];
}