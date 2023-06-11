// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsUtils {
  final FirebaseAnalytics analytics;

  AnalyticsUtils({required this.analytics});

  Future<void> sendAnalyticsEvent({
    required String eventName,
    Map<String, dynamic>? trackingData,
  }) async {
    await analytics.logEvent(
      name: eventName,
      parameters: trackingData ?? <String, dynamic>{},
    );
  }

  Future<void> trackingScreenEvent({
    String? currentScreen,
    String? lastScreen,
  }) async {
    await analytics.setCurrentScreen(
      screenName: currentScreen ?? '',
      screenClassOverride: lastScreen ?? '',
    );
  }
}
