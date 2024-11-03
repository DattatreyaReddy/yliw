// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageRepositoryHash() => r'0ccec0d240131602857fc562d92655dea50360df';

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

/// See also [messageRepository].
@ProviderFor(messageRepository)
const messageRepositoryProvider = MessageRepositoryFamily();

/// See also [messageRepository].
class MessageRepositoryFamily extends Family<DayBoxRepository> {
  /// See also [messageRepository].
  const MessageRepositoryFamily();

  /// See also [messageRepository].
  MessageRepositoryProvider call(
    String groupId,
  ) {
    return MessageRepositoryProvider(
      groupId,
    );
  }

  @override
  MessageRepositoryProvider getProviderOverride(
    covariant MessageRepositoryProvider provider,
  ) {
    return call(
      provider.groupId,
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
  String? get name => r'messageRepositoryProvider';
}

/// See also [messageRepository].
class MessageRepositoryProvider extends AutoDisposeProvider<DayBoxRepository> {
  /// See also [messageRepository].
  MessageRepositoryProvider(
    String groupId,
  ) : this._internal(
          (ref) => messageRepository(
            ref as MessageRepositoryRef,
            groupId,
          ),
          from: messageRepositoryProvider,
          name: r'messageRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageRepositoryHash,
          dependencies: MessageRepositoryFamily._dependencies,
          allTransitiveDependencies:
              MessageRepositoryFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  MessageRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final String groupId;

  @override
  Override overrideWith(
    DayBoxRepository Function(MessageRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MessageRepositoryProvider._internal(
        (ref) => create(ref as MessageRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DayBoxRepository> createElement() {
    return _MessageRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageRepositoryProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MessageRepositoryRef on AutoDisposeProviderRef<DayBoxRepository> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _MessageRepositoryProviderElement
    extends AutoDisposeProviderElement<DayBoxRepository>
    with MessageRepositoryRef {
  _MessageRepositoryProviderElement(super.provider);

  @override
  String get groupId => (origin as MessageRepositoryProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
