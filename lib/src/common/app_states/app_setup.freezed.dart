// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSetup {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loading,
    required TResult Function(DateTime dateOfBirth) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loading,
    TResult? Function(DateTime dateOfBirth)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loading,
    TResult Function(DateTime dateOfBirth)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetupPending value) pending,
    required TResult Function(SetupLoading value) loading,
    required TResult Function(SetupCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetupPending value)? pending,
    TResult? Function(SetupLoading value)? loading,
    TResult? Function(SetupCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetupPending value)? pending,
    TResult Function(SetupLoading value)? loading,
    TResult Function(SetupCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSetupCopyWith<$Res> {
  factory $AppSetupCopyWith(AppSetup value, $Res Function(AppSetup) then) =
      _$AppSetupCopyWithImpl<$Res, AppSetup>;
}

/// @nodoc
class _$AppSetupCopyWithImpl<$Res, $Val extends AppSetup>
    implements $AppSetupCopyWith<$Res> {
  _$AppSetupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSetup
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetupPendingImplCopyWith<$Res> {
  factory _$$SetupPendingImplCopyWith(
          _$SetupPendingImpl value, $Res Function(_$SetupPendingImpl) then) =
      __$$SetupPendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetupPendingImplCopyWithImpl<$Res>
    extends _$AppSetupCopyWithImpl<$Res, _$SetupPendingImpl>
    implements _$$SetupPendingImplCopyWith<$Res> {
  __$$SetupPendingImplCopyWithImpl(
      _$SetupPendingImpl _value, $Res Function(_$SetupPendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSetup
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetupPendingImpl implements SetupPending {
  _$SetupPendingImpl();

  @override
  String toString() {
    return 'AppSetup.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetupPendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loading,
    required TResult Function(DateTime dateOfBirth) completed,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loading,
    TResult? Function(DateTime dateOfBirth)? completed,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loading,
    TResult Function(DateTime dateOfBirth)? completed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetupPending value) pending,
    required TResult Function(SetupLoading value) loading,
    required TResult Function(SetupCompleted value) completed,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetupPending value)? pending,
    TResult? Function(SetupLoading value)? loading,
    TResult? Function(SetupCompleted value)? completed,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetupPending value)? pending,
    TResult Function(SetupLoading value)? loading,
    TResult Function(SetupCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class SetupPending implements AppSetup {
  factory SetupPending() = _$SetupPendingImpl;
}

/// @nodoc
abstract class _$$SetupLoadingImplCopyWith<$Res> {
  factory _$$SetupLoadingImplCopyWith(
          _$SetupLoadingImpl value, $Res Function(_$SetupLoadingImpl) then) =
      __$$SetupLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetupLoadingImplCopyWithImpl<$Res>
    extends _$AppSetupCopyWithImpl<$Res, _$SetupLoadingImpl>
    implements _$$SetupLoadingImplCopyWith<$Res> {
  __$$SetupLoadingImplCopyWithImpl(
      _$SetupLoadingImpl _value, $Res Function(_$SetupLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSetup
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetupLoadingImpl implements SetupLoading {
  _$SetupLoadingImpl();

  @override
  String toString() {
    return 'AppSetup.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetupLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loading,
    required TResult Function(DateTime dateOfBirth) completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loading,
    TResult? Function(DateTime dateOfBirth)? completed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loading,
    TResult Function(DateTime dateOfBirth)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetupPending value) pending,
    required TResult Function(SetupLoading value) loading,
    required TResult Function(SetupCompleted value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetupPending value)? pending,
    TResult? Function(SetupLoading value)? loading,
    TResult? Function(SetupCompleted value)? completed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetupPending value)? pending,
    TResult Function(SetupLoading value)? loading,
    TResult Function(SetupCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SetupLoading implements AppSetup {
  factory SetupLoading() = _$SetupLoadingImpl;
}

/// @nodoc
abstract class _$$SetupCompletedImplCopyWith<$Res> {
  factory _$$SetupCompletedImplCopyWith(_$SetupCompletedImpl value,
          $Res Function(_$SetupCompletedImpl) then) =
      __$$SetupCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateOfBirth});
}

/// @nodoc
class __$$SetupCompletedImplCopyWithImpl<$Res>
    extends _$AppSetupCopyWithImpl<$Res, _$SetupCompletedImpl>
    implements _$$SetupCompletedImplCopyWith<$Res> {
  __$$SetupCompletedImplCopyWithImpl(
      _$SetupCompletedImpl _value, $Res Function(_$SetupCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSetup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
  }) {
    return _then(_$SetupCompletedImpl(
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SetupCompletedImpl implements SetupCompleted {
  _$SetupCompletedImpl({required this.dateOfBirth});

  @override
  final DateTime dateOfBirth;

  @override
  String toString() {
    return 'AppSetup.completed(dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupCompletedImpl &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth);

  /// Create a copy of AppSetup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupCompletedImplCopyWith<_$SetupCompletedImpl> get copyWith =>
      __$$SetupCompletedImplCopyWithImpl<_$SetupCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() loading,
    required TResult Function(DateTime dateOfBirth) completed,
  }) {
    return completed(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? loading,
    TResult? Function(DateTime dateOfBirth)? completed,
  }) {
    return completed?.call(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? loading,
    TResult Function(DateTime dateOfBirth)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(dateOfBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetupPending value) pending,
    required TResult Function(SetupLoading value) loading,
    required TResult Function(SetupCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetupPending value)? pending,
    TResult? Function(SetupLoading value)? loading,
    TResult? Function(SetupCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetupPending value)? pending,
    TResult Function(SetupLoading value)? loading,
    TResult Function(SetupCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class SetupCompleted implements AppSetup {
  factory SetupCompleted({required final DateTime dateOfBirth}) =
      _$SetupCompletedImpl;

  DateTime get dateOfBirth;

  /// Create a copy of AppSetup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupCompletedImplCopyWith<_$SetupCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
