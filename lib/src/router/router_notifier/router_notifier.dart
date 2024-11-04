// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/app_states/app_setup.dart';
import '../../features/setup/controller/setup_controller.dart';
import '../router_config.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? _routerListener;

  @override
  void build() {
    // this watch will rebuild the notifier when the auth state changes
    ref.watch(appSetupStateProvider);
    listenSelf((_, next) {
      _routerListener?.call();
    });
    return;
  }

  /// Redirects the user when our setup changes
  String? redirect(GoRouterState routerState) {
    final setupState = ref.read(appSetupStateProvider);
    final location = routerState.uri.toString();
    final isSplash =
        (location.toLowerCase()).contains(const SplashRoute().location);

    final isSetup = location.startsWith(const SetupRoute().location);
    return switch (setupState) {
      SetupLoading() => isSplash ? null : const SplashRoute().location,
      SetupPending() => isSetup ? null : const SetupRoute().location,
      SetupCompleted() =>
        isSetup || isSplash ? const HomeWeekRoute().location : null,
    };
  }

  /// Adds [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method on creation to handle its
  /// internal [ChangeNotifier].
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void addListener(VoidCallback listener) => _routerListener = listener;

  /// Removes [GoRouter]'s listener as specified by its [Listenable].
  /// [GoRouteInformationProvider] uses this method when disposing,
  /// so that it removes its callback when destroyed.
  /// Check out the internal implementation of [GoRouter] and
  /// [GoRouteInformationProvider] to see this in action.
  @override
  void removeListener(VoidCallback listener) => _routerListener = null;
}
