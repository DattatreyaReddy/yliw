// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/home/presentation/day_home_screen.dart';
import '../features/home/presentation/week_home_screen.dart';
import '../features/home/presentation/year_home_screen.dart';
import '../features/notes/presentation/day_chat_screen.dart';
import '../features/notes/presentation/week_chat_screen.dart';
import '../features/notes/presentation/year_chat_screen.dart';
import '../features/setup/presentation/setup_screen.dart';
import '../features/splash/presentation/splash_screen.dart';
import 'router_notifier/router_notifier.dart';

part 'router_config.g.dart';

abstract class _Routes {
  static const splash = '/splash';
  static const homeWeek = '/week';
  static const boxNumber = ':boxNumber';
  static const homeYear = '/year';
  static const homeDay = '/day';
  static const setup = '/setup';
}

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GoRouter routerConfig(Ref ref) {
  // This instruction keeps this notifier alive
  // We don't really care of its value, and neither we want to rebuild on its changes.
  final sub = ref.listen(routerNotifierProvider, (_, __) {});
  ref.onDispose(() => sub.close());

  final notifier = ref.read(routerNotifierProvider.notifier);
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    refreshListenable: notifier,
    debugLogDiagnostics: kDebugMode,
    initialLocation: const SplashRoute().location,
    routes: $appRoutes,
    redirect: (context, state) => notifier.redirect(state),
  );
}

@TypedGoRoute<SplashRoute>(path: _Routes.splash)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(context, state) => SplashScreen();
}

@TypedGoRoute<SetupRoute>(path: _Routes.setup)
class SetupRoute extends GoRouteData {
  const SetupRoute();

  @override
  Widget build(context, state) => SetupScreen();
}

@TypedGoRoute<HomeWeekRoute>(
  path: _Routes.homeWeek,
  routes: [
    TypedGoRoute<WeekChatRoute>(path: _Routes.boxNumber),
  ],
)
class HomeWeekRoute extends GoRouteData {
  const HomeWeekRoute();

  @override
  Widget build(context, state) => WeekHomeScreen();
}

class WeekChatRoute extends GoRouteData {
  const WeekChatRoute(this.boxNumber);
  final int boxNumber;
  @override
  Widget build(context, state) => WeekChatScreen(weekNumber: boxNumber);
}

@TypedGoRoute<HomeDayRoute>(
  path: _Routes.homeDay,
  routes: [
    TypedGoRoute<DayChatRoute>(path: _Routes.boxNumber),
  ],
)
class HomeDayRoute extends GoRouteData {
  const HomeDayRoute();

  @override
  Widget build(context, state) => DayHomeScreen();
}

class DayChatRoute extends GoRouteData {
  const DayChatRoute(this.boxNumber);
  final int boxNumber;
  @override
  Widget build(context, state) => DayChatScreen(dayNumber: boxNumber);
}

@TypedGoRoute<HomeYearRoute>(
  path: _Routes.homeYear,
  routes: [
    TypedGoRoute<YearChatRoute>(path: _Routes.boxNumber),
  ],
)
class HomeYearRoute extends GoRouteData {
  const HomeYearRoute();

  @override
  Widget build(context, state) => YearHomeScreen();
}

class YearChatRoute extends GoRouteData {
  const YearChatRoute(this.boxNumber);
  final int boxNumber;
  @override
  Widget build(context, state) => YearChatScreen(yearNumber: boxNumber);
}
