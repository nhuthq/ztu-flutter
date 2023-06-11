part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignOut extends AuthEvent {}

class SignInWithApple extends AuthEvent {}

class SignInWithGoogle extends AuthEvent {}

class FetchLoggedInUser extends AuthEvent {}

class InitAuthentication extends AuthEvent {}

class SignUpWithEmailPassword extends AuthEvent {}

class SignInWithEmailPassword extends AuthEvent {}


