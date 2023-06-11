import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ztu/common/base/di_module.dart';
import 'package:ztu/common/di/injection/injection.dart';
import 'package:ztu/common/utils/analytics_utils.dart';
import 'package:ztu/common/utils/shared_prefs_utils.dart';

class CommonModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt
      ..registerSingleton<SharedPrefsUtils>(
        SharedPrefsUtils(
          sharedPreferences: await SharedPreferences.getInstance(),
        ),
      )
      ..registerLazySingleton(
          () => AnalyticsUtils(analytics: getIt<FirebaseAnalytics>()));
  }
}
