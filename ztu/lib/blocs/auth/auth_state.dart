part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  final User? user;

  const AuthState({this.user});

  @override
  List<Object?> get props => [user];
}

class InitializationState extends AuthState {
  InitializationState() : super(user: null);
}

class UnauthenticatedState extends AuthState {
  UnauthenticatedState() : super(user: null);
}

class AuthenticatedState extends AuthState {
  AuthenticatedState({User? user}) : super(user: user);
}
