import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ztu/common/base/di_module.dart';
import 'package:ztu/common/di/injection/injection.dart';
import 'package:ztu/repositories/auth/auth_repository.dart';
import 'package:ztu/repositories/user/user_repository.dart';

class RepositoryModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton<UserRepository>(
        () => UserRepository(
          firebaseFirestore: getIt.get<FirebaseFirestore>(),
        ),
      )
      ..registerLazySingleton<AuthRepository>(
        () => AuthRepository(
          firebaseAuth: getIt.get<FirebaseAuth>(),
          firebaseFirestore: getIt.get<FirebaseFirestore>(),
          googleSignIn: getIt.get<GoogleSignIn>(),
        ),
      );
  }
}
