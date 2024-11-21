// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dayBoxMapHash() => r'fe659d545d8acdf48bb4379928972dc07b1d4038';

/// See also [dayBoxMap].
@ProviderFor(dayBoxMap)
final dayBoxMapProvider =
    AutoDisposeStreamProvider<LinkedHashMap<int, List<DayBox>>?>.internal(
  dayBoxMap,
  name: r'dayBoxMapProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dayBoxMapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DayBoxMapRef
    = AutoDisposeStreamProviderRef<LinkedHashMap<int, List<DayBox>>?>;
String _$dayBoxHash() => r'a03491494ae70644dcbd41bc90a0a7bf7f93649d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [dayBox].
@ProviderFor(dayBox)
const dayBoxProvider = DayBoxFamily();

/// See also [dayBox].
class DayBoxFamily extends Family<AsyncValue<DayBox?>> {
  /// See also [dayBox].
  const DayBoxFamily();

  /// See also [dayBox].
  DayBoxProvider call(
    int boxNumber,
  ) {
    return DayBoxProvider(
      boxNumber,
    );
  }

  @override
  DayBoxProvider getProviderOverride(
    covariant DayBoxProvider provider,
  ) {
    return call(
      provider.boxNumber,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dayBoxProvider';
}

/// See also [dayBox].
class DayBoxProvider extends AutoDisposeStreamProvider<DayBox?> {
  /// See also [dayBox].
  DayBoxProvider(
    int boxNumber,
  ) : this._internal(
          (ref) => dayBox(
            ref as DayBoxRef,
            boxNumber,
          ),
          from: dayBoxProvider,
          name: r'dayBoxProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dayBoxHash,
          dependencies: DayBoxFamily._dependencies,
          allTransitiveDependencies: DayBoxFamily._allTransitiveDependencies,
          boxNumber: boxNumber,
        );

  DayBoxProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.boxNumber,
  }) : super.internal();

  final int boxNumber;

  @override
  Override overrideWith(
    Stream<DayBox?> Function(DayBoxRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DayBoxProvider._internal(
        (ref) => create(ref as DayBoxRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        boxNumber: boxNumber,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<DayBox?> createElement() {
    return _DayBoxProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DayBoxProvider && other.boxNumber == boxNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, boxNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DayBoxRef on AutoDisposeStreamProviderRef<DayBox?> {
  /// The parameter `boxNumber` of this provider.
  int get boxNumber;
}

class _DayBoxProviderElement extends AutoDisposeStreamProviderElement<DayBox?>
    with DayBoxRef {
  _DayBoxProviderElement(super.provider);

  @override
  int get boxNumber => (origin as DayBoxProvider).boxNumber;
}

String _$weekBoxHash() => r'9f662058a54370445316112f75ddaa032e23aa65';

/// See also [weekBox].
@ProviderFor(weekBox)
const weekBoxProvider = WeekBoxFamily();

/// See also [weekBox].
class WeekBoxFamily extends Family<AsyncValue<WeekBox?>> {
  /// See also [weekBox].
  const WeekBoxFamily();

  /// See also [weekBox].
  WeekBoxProvider call(
    int boxNumber,
  ) {
    return WeekBoxProvider(
      boxNumber,
    );
  }

  @override
  WeekBoxProvider getProviderOverride(
    covariant WeekBoxProvider provider,
  ) {
    return call(
      provider.boxNumber,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weekBoxProvider';
}

/// See also [weekBox].
class WeekBoxProvider extends AutoDisposeStreamProvider<WeekBox?> {
  /// See also [weekBox].
  WeekBoxProvider(
    int boxNumber,
  ) : this._internal(
          (ref) => weekBox(
            ref as WeekBoxRef,
            boxNumber,
          ),
          from: weekBoxProvider,
          name: r'weekBoxProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weekBoxHash,
          dependencies: WeekBoxFamily._dependencies,
          allTransitiveDependencies: WeekBoxFamily._allTransitiveDependencies,
          boxNumber: boxNumber,
        );

  WeekBoxProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.boxNumber,
  }) : super.internal();

  final int boxNumber;

  @override
  Override overrideWith(
    Stream<WeekBox?> Function(WeekBoxRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeekBoxProvider._internal(
        (ref) => create(ref as WeekBoxRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        boxNumber: boxNumber,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<WeekBox?> createElement() {
    return _WeekBoxProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeekBoxProvider && other.boxNumber == boxNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, boxNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WeekBoxRef on AutoDisposeStreamProviderRef<WeekBox?> {
  /// The parameter `boxNumber` of this provider.
  int get boxNumber;
}

class _WeekBoxProviderElement extends AutoDisposeStreamProviderElement<WeekBox?>
    with WeekBoxRef {
  _WeekBoxProviderElement(super.provider);

  @override
  int get boxNumber => (origin as WeekBoxProvider).boxNumber;
}

String _$yearBoxHash() => r'79e96e09ede8fb3ee11a5cd51b67c3dd782e9448';

/// See also [yearBox].
@ProviderFor(yearBox)
const yearBoxProvider = YearBoxFamily();

/// See also [yearBox].
class YearBoxFamily extends Family<AsyncValue<YearBox?>> {
  /// See also [yearBox].
  const YearBoxFamily();

  /// See also [yearBox].
  YearBoxProvider call(
    int boxNumber,
  ) {
    return YearBoxProvider(
      boxNumber,
    );
  }

  @override
  YearBoxProvider getProviderOverride(
    covariant YearBoxProvider provider,
  ) {
    return call(
      provider.boxNumber,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'yearBoxProvider';
}

/// See also [yearBox].
class YearBoxProvider extends AutoDisposeStreamProvider<YearBox?> {
  /// See also [yearBox].
  YearBoxProvider(
    int boxNumber,
  ) : this._internal(
          (ref) => yearBox(
            ref as YearBoxRef,
            boxNumber,
          ),
          from: yearBoxProvider,
          name: r'yearBoxProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$yearBoxHash,
          dependencies: YearBoxFamily._dependencies,
          allTransitiveDependencies: YearBoxFamily._allTransitiveDependencies,
          boxNumber: boxNumber,
        );

  YearBoxProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.boxNumber,
  }) : super.internal();

  final int boxNumber;

  @override
  Override overrideWith(
    Stream<YearBox?> Function(YearBoxRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: YearBoxProvider._internal(
        (ref) => create(ref as YearBoxRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        boxNumber: boxNumber,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<YearBox?> createElement() {
    return _YearBoxProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is YearBoxProvider && other.boxNumber == boxNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, boxNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin YearBoxRef on AutoDisposeStreamProviderRef<YearBox?> {
  /// The parameter `boxNumber` of this provider.
  int get boxNumber;
}

class _YearBoxProviderElement extends AutoDisposeStreamProviderElement<YearBox?>
    with YearBoxRef {
  _YearBoxProviderElement(super.provider);

  @override
  int get boxNumber => (origin as YearBoxProvider).boxNumber;
}

String _$weekBoxMapHash() => r'e846f34c3d5d6f89f2fb841cb2f9a951d5379c9a';

/// See also [weekBoxMap].
@ProviderFor(weekBoxMap)
final weekBoxMapProvider =
    AutoDisposeStreamProvider<LinkedHashMap<int, List<WeekBox>>?>.internal(
  weekBoxMap,
  name: r'weekBoxMapProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$weekBoxMapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WeekBoxMapRef
    = AutoDisposeStreamProviderRef<LinkedHashMap<int, List<WeekBox>>?>;
String _$yearBoxMapHash() => r'664192d471f4f93d56566a8df807e0e5e089a2cf';

/// See also [yearBoxMap].
@ProviderFor(yearBoxMap)
final yearBoxMapProvider =
    AutoDisposeStreamProvider<LinkedHashMap<int, List<YearBox>>?>.internal(
  yearBoxMap,
  name: r'yearBoxMapProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$yearBoxMapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef YearBoxMapRef
    = AutoDisposeStreamProviderRef<LinkedHashMap<int, List<YearBox>>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
