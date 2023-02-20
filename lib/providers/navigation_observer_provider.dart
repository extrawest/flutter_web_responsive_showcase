import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationObserverProvider = Provider<FirebaseAnalyticsObserver>((ref) {
  return FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);
});