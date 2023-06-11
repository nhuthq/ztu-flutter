import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuthRepository {
  Future<User?> getCurrentUser();
  Future<void> signUpWithEmailPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> signInSilently();

  Future<void> signInWithApple();

  Future<void> signInWithGoogle();

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}
