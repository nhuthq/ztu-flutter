import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ztu/common/base/di_module.dart';
import 'package:ztu/common/di/injection/injection.dart';

class ComponentsModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerLazySingleton(() => FirebaseAnalytics.instance)
      ..registerLazySingleton(() => FirebaseAuth.instance)
      ..registerLazySingleton(() => FirebaseStorage.instance)
      ..registerLazySingleton(() => FirebaseFirestore.instance)
      ..registerLazySingleton(
        () => FirebaseAnalyticsObserver(analytics: getIt<FirebaseAnalytics>()),
      )
      ..registerLazySingleton(
        () => GoogleSignIn(
          scopes: [
            'email',
          ],
        ),
      );
  }
}
