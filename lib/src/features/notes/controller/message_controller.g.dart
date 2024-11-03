// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageListByGroupIdHash() =>
    r'4e9104307dfcf0b532ca9557d271fce6965066f7';

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

/// See also [messageListByGroupId].
@ProviderFor(messageListByGroupId)
const messageListByGroupIdProvider = MessageListByGroupIdFamily();

/// See also [messageListByGroupId].
class MessageListByGroupIdFamily extends Family<AsyncValue<List<Message>?>> {
  /// See also [messageListByGroupId].
  const MessageListByGroupIdFamily();

  /// See also [messageListByGroupId].
  MessageListByGroupIdProvider call(
    String groupId,
  ) {
    return MessageListByGroupIdProvider(
      groupId,
    );
  }

  @override
  MessageListByGroupIdProvider getProviderOverride(
    covariant MessageListByGroupIdProvider provider,
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
  String? get name => r'messageListByGroupIdProvider';
}

/// See also [messageListByGroupId].
class MessageListByGroupIdProvider
    extends AutoDisposeStreamProvider<List<Message>?> {
  /// See also [messageListByGroupId].
  MessageListByGroupIdProvider(
    String groupId,
  ) : this._internal(
          (ref) => messageListByGroupId(
            ref as MessageListByGroupIdRef,
            groupId,
          ),
          from: messageListByGroupIdProvider,
          name: r'messageListByGroupIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$messageListByGroupIdHash,
          dependencies: MessageListByGroupIdFamily._dependencies,
          allTransitiveDependencies:
              MessageListByGroupIdFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  MessageListByGroupIdProvider._internal(
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
    Stream<List<Message>?> Function(MessageListByGroupIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MessageListByGroupIdProvider._internal(
        (ref) => create(ref as MessageListByGroupIdRef),
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
  AutoDisposeStreamProviderElement<List<Message>?> createElement() {
    return _MessageListByGroupIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageListByGroupIdProvider && other.groupId == groupId;
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
mixin MessageListByGroupIdRef on AutoDisposeStreamProviderRef<List<Message>?> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _MessageListByGroupIdProviderElement
    extends AutoDisposeStreamProviderElement<List<Message>?>
    with MessageListByGroupIdRef {
  _MessageListByGroupIdProviderElement(super.provider);

  @override
  String get groupId => (origin as MessageListByGroupIdProvider).groupId;
}

String _$processedMessageHash() => r'deb37a73fb885fb593dba1d59b4cf3ad881d02a3';

/// See also [processedMessage].
@ProviderFor(processedMessage)
const processedMessageProvider = ProcessedMessageFamily();

/// See also [processedMessage].
class ProcessedMessageFamily
    extends Family<AsyncValue<List<ProcessedMessage>>> {
  /// See also [processedMessage].
  const ProcessedMessageFamily();

  /// See also [processedMessage].
  ProcessedMessageProvider call(
    String groupId,
  ) {
    return ProcessedMessageProvider(
      groupId,
    );
  }

  @override
  ProcessedMessageProvider getProviderOverride(
    covariant ProcessedMessageProvider provider,
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
  String? get name => r'processedMessageProvider';
}

/// See also [processedMessage].
class ProcessedMessageProvider
    extends AutoDisposeProvider<AsyncValue<List<ProcessedMessage>>> {
  /// See also [processedMessage].
  ProcessedMessageProvider(
    String groupId,
  ) : this._internal(
          (ref) => processedMessage(
            ref as ProcessedMessageRef,
            groupId,
          ),
          from: processedMessageProvider,
          name: r'processedMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$processedMessageHash,
          dependencies: ProcessedMessageFamily._dependencies,
          allTransitiveDependencies:
              ProcessedMessageFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  ProcessedMessageProvider._internal(
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
    AsyncValue<List<ProcessedMessage>> Function(ProcessedMessageRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProcessedMessageProvider._internal(
        (ref) => create(ref as ProcessedMessageRef),
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
  AutoDisposeProviderElement<AsyncValue<List<ProcessedMessage>>>
      createElement() {
    return _ProcessedMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProcessedMessageProvider && other.groupId == groupId;
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
mixin ProcessedMessageRef
    on AutoDisposeProviderRef<AsyncValue<List<ProcessedMessage>>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _ProcessedMessageProviderElement
    extends AutoDisposeProviderElement<AsyncValue<List<ProcessedMessage>>>
    with ProcessedMessageRef {
  _ProcessedMessageProviderElement(super.provider);

  @override
  String get groupId => (origin as ProcessedMessageProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
