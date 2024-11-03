// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_config.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $setupRoute,
      $homeWeekRoute,
      $homeDayRoute,
      $homeYearRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $setupRoute => GoRouteData.$route(
      path: '/setup',
      factory: $SetupRouteExtension._fromState,
    );

extension $SetupRouteExtension on SetupRoute {
  static SetupRoute _fromState(GoRouterState state) => const SetupRoute();

  String get location => GoRouteData.$location(
        '/setup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeWeekRoute => GoRouteData.$route(
      path: '/week',
      factory: $HomeWeekRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':boxNumber',
          factory: $WeekChatRouteExtension._fromState,
        ),
      ],
    );

extension $HomeWeekRouteExtension on HomeWeekRoute {
  static HomeWeekRoute _fromState(GoRouterState state) => const HomeWeekRoute();

  String get location => GoRouteData.$location(
        '/week',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WeekChatRouteExtension on WeekChatRoute {
  static WeekChatRoute _fromState(GoRouterState state) => WeekChatRoute(
        int.parse(state.pathParameters['boxNumber']!),
      );

  String get location => GoRouteData.$location(
        '/week/${Uri.encodeComponent(boxNumber.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeDayRoute => GoRouteData.$route(
      path: '/day',
      factory: $HomeDayRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':boxNumber',
          factory: $DayChatRouteExtension._fromState,
        ),
      ],
    );

extension $HomeDayRouteExtension on HomeDayRoute {
  static HomeDayRoute _fromState(GoRouterState state) => const HomeDayRoute();

  String get location => GoRouteData.$location(
        '/day',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DayChatRouteExtension on DayChatRoute {
  static DayChatRoute _fromState(GoRouterState state) => DayChatRoute(
        int.parse(state.pathParameters['boxNumber']!),
      );

  String get location => GoRouteData.$location(
        '/day/${Uri.encodeComponent(boxNumber.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeYearRoute => GoRouteData.$route(
      path: '/year',
      factory: $HomeYearRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':boxNumber',
          factory: $YearChatRouteExtension._fromState,
        ),
      ],
    );

extension $HomeYearRouteExtension on HomeYearRoute {
  static HomeYearRoute _fromState(GoRouterState state) => const HomeYearRoute();

  String get location => GoRouteData.$location(
        '/year',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $YearChatRouteExtension on YearChatRoute {
  static YearChatRoute _fromState(GoRouterState state) => YearChatRoute(
        int.parse(state.pathParameters['boxNumber']!),
      );

  String get location => GoRouteData.$location(
        '/year/${Uri.encodeComponent(boxNumber.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerConfigHash() => r'2140b3dae4e3a4331ffca0c4a295dc9861e3a0ff';

/// See also [routerConfig].
@ProviderFor(routerConfig)
final routerConfigProvider = AutoDisposeProvider<GoRouter>.internal(
  routerConfig,
  name: r'routerConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RouterConfigRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
