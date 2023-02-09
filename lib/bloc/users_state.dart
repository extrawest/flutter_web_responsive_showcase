part of 'users_bloc.dart';

enum UsersStatus { initial, loading, success, failure }

class UsersState extends Equatable {
  final UsersStatus status;

  const UsersState({
    this.status = UsersStatus.initial,
  });

  UsersState copyWith({
    UsersStatus? status,
  }) {
    return UsersState(
      status: status ?? this.status,
    );
  }

  @override List<Object> get props => [];
}