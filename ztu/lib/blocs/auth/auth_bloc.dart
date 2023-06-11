import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ztu/models/user.dart';
import 'package:ztu/repositories/auth/auth_repository.dart';
import 'package:ztu/repositories/user/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  AuthBloc({required this.authRepository, required this.userRepository})
      : super(InitializationState()) {
    on<InitAuthentication>(_onInitAuthentication);
    on<SignOut>(_onSignOut);
    on<SignInWithApple>(_onSignInWithApple);
    on<SignInWithGoogle>(_onSignInWithGoogle);
    on<FetchLoggedInUser>(_onFetchLoggedInUser);
    on<SignUpWithEmailPassword>(_onSignUpWithEmailPassword);
    on<SignInWithEmailPassword>(_onSignInWithEmailPassword);
  }

  Future<void> _onInitAuthentication(
      InitAuthentication event, Emitter<AuthState> emit) async {
    try {
      await authRepository.signInSilently();
      final firebaseUser = await authRepository.getCurrentUser();
      if (firebaseUser == null) {
        emit(UnauthenticatedState());
      } else {
        final currentUser = await userRepository.getUser(firebaseUser.uid);

        if (currentUser != null) {
          emit(AuthenticatedState(user: currentUser));
        } else {
          emit(UnauthenticatedState());
        }
      }
    } catch (e) {
      debugPrint('>>>>> ${e.toString()}');
    }
  }

  Future<void> _onSignInWithGoogle(
      SignInWithGoogle event, Emitter<AuthState> emit) async {}

  Future<void> _onSignInWithApple(
      SignInWithApple event, Emitter<AuthState> emit) async {}
  Future<void> _onSignUpWithEmailPassword(
      SignUpWithEmailPassword event, Emitter<AuthState> emit) async {}
  Future<void> _onSignInWithEmailPassword(
      SignInWithEmailPassword event, Emitter<AuthState> emit) async {}
  Future<void> _onSignOut(SignOut event, Emitter<AuthState> emit) async {}
  Future<void> _onFetchLoggedInUser(
      FetchLoggedInUser event, Emitter<AuthState> emit) async {}
}
