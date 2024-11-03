// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayBox _$DayBoxFromJson(Map<String, dynamic> json) {
  return _DayBox.fromJson(json);
}

/// @nodoc
mixin _$DayBox {
  int get boxNumber => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get date => throw _privateConstructorUsedError;
  BoxStatus get boxStatus => throw _privateConstructorUsedError;
  int get weekNumber => throw _privateConstructorUsedError;
  int get yearNumber => throw _privateConstructorUsedError;
  bool get hasLandMark => throw _privateConstructorUsedError;

  /// Serializes this DayBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DayBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayBoxCopyWith<DayBox> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayBoxCopyWith<$Res> {
  factory $DayBoxCopyWith(DayBox value, $Res Function(DayBox) then) =
      _$DayBoxCopyWithImpl<$Res, DayBox>;
  @useResult
  $Res call(
      {int boxNumber,
      @EpochDateTimeConverter() DateTime date,
      BoxStatus boxStatus,
      int weekNumber,
      int yearNumber,
      bool hasLandMark});
}

/// @nodoc
class _$DayBoxCopyWithImpl<$Res, $Val extends DayBox>
    implements $DayBoxCopyWith<$Res> {
  _$DayBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxNumber = null,
    Object? date = null,
    Object? boxStatus = null,
    Object? weekNumber = null,
    Object? yearNumber = null,
    Object? hasLandMark = null,
  }) {
    return _then(_value.copyWith(
      boxNumber: null == boxNumber
          ? _value.boxNumber
          : boxNumber // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boxStatus: null == boxStatus
          ? _value.boxStatus
          : boxStatus // ignore: cast_nullable_to_non_nullable
              as BoxStatus,
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      yearNumber: null == yearNumber
          ? _value.yearNumber
          : yearNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hasLandMark: null == hasLandMark
          ? _value.hasLandMark
          : hasLandMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayBoxImplCopyWith<$Res> implements $DayBoxCopyWith<$Res> {
  factory _$$DayBoxImplCopyWith(
          _$DayBoxImpl value, $Res Function(_$DayBoxImpl) then) =
      __$$DayBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int boxNumber,
      @EpochDateTimeConverter() DateTime date,
      BoxStatus boxStatus,
      int weekNumber,
      int yearNumber,
      bool hasLandMark});
}

/// @nodoc
class __$$DayBoxImplCopyWithImpl<$Res>
    extends _$DayBoxCopyWithImpl<$Res, _$DayBoxImpl>
    implements _$$DayBoxImplCopyWith<$Res> {
  __$$DayBoxImplCopyWithImpl(
      _$DayBoxImpl _value, $Res Function(_$DayBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxNumber = null,
    Object? date = null,
    Object? boxStatus = null,
    Object? weekNumber = null,
    Object? yearNumber = null,
    Object? hasLandMark = null,
  }) {
    return _then(_$DayBoxImpl(
      boxNumber: null == boxNumber
          ? _value.boxNumber
          : boxNumber // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boxStatus: null == boxStatus
          ? _value.boxStatus
          : boxStatus // ignore: cast_nullable_to_non_nullable
              as BoxStatus,
      weekNumber: null == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int,
      yearNumber: null == yearNumber
          ? _value.yearNumber
          : yearNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hasLandMark: null == hasLandMark
          ? _value.hasLandMark
          : hasLandMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayBoxImpl extends _DayBox {
  _$DayBoxImpl(
      {required this.boxNumber,
      @EpochDateTimeConverter() required this.date,
      required this.boxStatus,
      required this.weekNumber,
      required this.yearNumber,
      this.hasLandMark = false})
      : super._();

  factory _$DayBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayBoxImplFromJson(json);

  @override
  final int boxNumber;
  @override
  @EpochDateTimeConverter()
  final DateTime date;
  @override
  final BoxStatus boxStatus;
  @override
  final int weekNumber;
  @override
  final int yearNumber;
  @override
  @JsonKey()
  final bool hasLandMark;

  @override
  String toString() {
    return 'DayBox(boxNumber: $boxNumber, date: $date, boxStatus: $boxStatus, weekNumber: $weekNumber, yearNumber: $yearNumber, hasLandMark: $hasLandMark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayBoxImpl &&
            (identical(other.boxNumber, boxNumber) ||
                other.boxNumber == boxNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.boxStatus, boxStatus) ||
                other.boxStatus == boxStatus) &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.yearNumber, yearNumber) ||
                other.yearNumber == yearNumber) &&
            (identical(other.hasLandMark, hasLandMark) ||
                other.hasLandMark == hasLandMark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, boxNumber, date, boxStatus,
      weekNumber, yearNumber, hasLandMark);

  /// Create a copy of DayBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayBoxImplCopyWith<_$DayBoxImpl> get copyWith =>
      __$$DayBoxImplCopyWithImpl<_$DayBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayBoxImplToJson(
      this,
    );
  }
}

abstract class _DayBox extends DayBox {
  factory _DayBox(
      {required final int boxNumber,
      @EpochDateTimeConverter() required final DateTime date,
      required final BoxStatus boxStatus,
      required final int weekNumber,
      required final int yearNumber,
      final bool hasLandMark}) = _$DayBoxImpl;
  _DayBox._() : super._();

  factory _DayBox.fromJson(Map<String, dynamic> json) = _$DayBoxImpl.fromJson;

  @override
  int get boxNumber;
  @override
  @EpochDateTimeConverter()
  DateTime get date;
  @override
  BoxStatus get boxStatus;
  @override
  int get weekNumber;
  @override
  int get yearNumber;
  @override
  bool get hasLandMark;

  /// Create a copy of DayBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayBoxImplCopyWith<_$DayBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekBox _$WeekBoxFromJson(Map<String, dynamic> json) {
  return _WeekBox.fromJson(json);
}

/// @nodoc
mixin _$WeekBox {
  int get boxNumber => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get endDate => throw _privateConstructorUsedError;
  BoxStatus get boxStatus => throw _privateConstructorUsedError;
  int get yearNumber => throw _privateConstructorUsedError;
  bool get hasLandMark => throw _privateConstructorUsedError;

  /// Serializes this WeekBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeekBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekBoxCopyWith<WeekBox> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekBoxCopyWith<$Res> {
  factory $WeekBoxCopyWith(WeekBox value, $Res Function(WeekBox) then) =
      _$WeekBoxCopyWithImpl<$Res, WeekBox>;
  @useResult
  $Res call(
      {int boxNumber,
      @EpochDateTimeConverter() DateTime startDate,
      @EpochDateTimeConverter() DateTime endDate,
      BoxStatus boxStatus,
      int yearNumber,
      bool hasLandMark});
}

/// @nodoc
class _$WeekBoxCopyWithImpl<$Res, $Val extends WeekBox>
    implements $WeekBoxCopyWith<$Res> {
  _$WeekBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeekBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxNumber = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? boxStatus = null,
    Object? yearNumber = null,
    Object? hasLandMark = null,
  }) {
    return _then(_value.copyWith(
      boxNumber: null == boxNumber
          ? _value.boxNumber
          : boxNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boxStatus: null == boxStatus
          ? _value.boxStatus
          : boxStatus // ignore: cast_nullable_to_non_nullable
              as BoxStatus,
      yearNumber: null == yearNumber
          ? _value.yearNumber
          : yearNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hasLandMark: null == hasLandMark
          ? _value.hasLandMark
          : hasLandMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekBoxImplCopyWith<$Res> implements $WeekBoxCopyWith<$Res> {
  factory _$$WeekBoxImplCopyWith(
          _$WeekBoxImpl value, $Res Function(_$WeekBoxImpl) then) =
      __$$WeekBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int boxNumber,
      @EpochDateTimeConverter() DateTime startDate,
      @EpochDateTimeConverter() DateTime endDate,
      BoxStatus boxStatus,
      int yearNumber,
      bool hasLandMark});
}

/// @nodoc
class __$$WeekBoxImplCopyWithImpl<$Res>
    extends _$WeekBoxCopyWithImpl<$Res, _$WeekBoxImpl>
    implements _$$WeekBoxImplCopyWith<$Res> {
  __$$WeekBoxImplCopyWithImpl(
      _$WeekBoxImpl _value, $Res Function(_$WeekBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeekBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxNumber = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? boxStatus = null,
    Object? yearNumber = null,
    Object? hasLandMark = null,
  }) {
    return _then(_$WeekBoxImpl(
      boxNumber: null == boxNumber
          ? _value.boxNumber
          : boxNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boxStatus: null == boxStatus
          ? _value.boxStatus
          : boxStatus // ignore: cast_nullable_to_non_nullable
              as BoxStatus,
      yearNumber: null == yearNumber
          ? _value.yearNumber
          : yearNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hasLandMark: null == hasLandMark
          ? _value.hasLandMark
          : hasLandMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekBoxImpl extends _WeekBox {
  _$WeekBoxImpl(
      {required this.boxNumber,
      @EpochDateTimeConverter() required this.startDate,
      @EpochDateTimeConverter() required this.endDate,
      required this.boxStatus,
      required this.yearNumber,
      this.hasLandMark = false})
      : super._();

  factory _$WeekBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekBoxImplFromJson(json);

  @override
  final int boxNumber;
  @override
  @EpochDateTimeConverter()
  final DateTime startDate;
  @override
  @EpochDateTimeConverter()
  final DateTime endDate;
  @override
  final BoxStatus boxStatus;
  @override
  final int yearNumber;
  @override
  @JsonKey()
  final bool hasLandMark;

  @override
  String toString() {
    return 'WeekBox(boxNumber: $boxNumber, startDate: $startDate, endDate: $endDate, boxStatus: $boxStatus, yearNumber: $yearNumber, hasLandMark: $hasLandMark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekBoxImpl &&
            (identical(other.boxNumber, boxNumber) ||
                other.boxNumber == boxNumber) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.boxStatus, boxStatus) ||
                other.boxStatus == boxStatus) &&
            (identical(other.yearNumber, yearNumber) ||
                other.yearNumber == yearNumber) &&
            (identical(other.hasLandMark, hasLandMark) ||
                other.hasLandMark == hasLandMark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, boxNumber, startDate, endDate,
      boxStatus, yearNumber, hasLandMark);

  /// Create a copy of WeekBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekBoxImplCopyWith<_$WeekBoxImpl> get copyWith =>
      __$$WeekBoxImplCopyWithImpl<_$WeekBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekBoxImplToJson(
      this,
    );
  }
}

abstract class _WeekBox extends WeekBox {
  factory _WeekBox(
      {required final int boxNumber,
      @EpochDateTimeConverter() required final DateTime startDate,
      @EpochDateTimeConverter() required final DateTime endDate,
      required final BoxStatus boxStatus,
      required final int yearNumber,
      final bool hasLandMark}) = _$WeekBoxImpl;
  _WeekBox._() : super._();

  factory _WeekBox.fromJson(Map<String, dynamic> json) = _$WeekBoxImpl.fromJson;

  @override
  int get boxNumber;
  @override
  @EpochDateTimeConverter()
  DateTime get startDate;
  @override
  @EpochDateTimeConverter()
  DateTime get endDate;
  @override
  BoxStatus get boxStatus;
  @override
  int get yearNumber;
  @override
  bool get hasLandMark;

  /// Create a copy of WeekBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekBoxImplCopyWith<_$WeekBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YearBox _$YearBoxFromJson(Map<String, dynamic> json) {
  return _YearBox.fromJson(json);
}

/// @nodoc
mixin _$YearBox {
  int get boxNumber => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @EpochDateTimeConverter()
  DateTime get endDate => throw _privateConstructorUsedError;
  BoxStatus get boxStatus => throw _privateConstructorUsedError;
  bool get hasLandMark => throw _privateConstructorUsedError;

  /// Serializes this YearBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YearBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YearBoxCopyWith<YearBox> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearBoxCopyWith<$Res> {
  factory $YearBoxCopyWith(YearBox value, $Res Function(YearBox) then) =
      _$YearBoxCopyWithImpl<$Res, YearBox>;
  @useResult
  $Res call(
      {int boxNumber,
      @EpochDateTimeConverter() DateTime startDate,
      @EpochDateTimeConverter() DateTime endDate,
      BoxStatus boxStatus,
      bool hasLandMark});
}

/// @nodoc
class _$YearBoxCopyWithImpl<$Res, $Val extends YearBox>
    implements $YearBoxCopyWith<$Res> {
  _$YearBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YearBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxNumber = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? boxStatus = null,
    Object? hasLandMark = null,
  }) {
    return _then(_value.copyWith(
      boxNumber: null == boxNumber
          ? _value.boxNumber
          : boxNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boxStatus: null == boxStatus
          ? _value.boxStatus
          : boxStatus // ignore: cast_nullable_to_non_nullable
              as BoxStatus,
      hasLandMark: null == hasLandMark
          ? _value.hasLandMark
          : hasLandMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YearBoxImplCopyWith<$Res> implements $YearBoxCopyWith<$Res> {
  factory _$$YearBoxImplCopyWith(
          _$YearBoxImpl value, $Res Function(_$YearBoxImpl) then) =
      __$$YearBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int boxNumber,
      @EpochDateTimeConverter() DateTime startDate,
      @EpochDateTimeConverter() DateTime endDate,
      BoxStatus boxStatus,
      bool hasLandMark});
}

/// @nodoc
class __$$YearBoxImplCopyWithImpl<$Res>
    extends _$YearBoxCopyWithImpl<$Res, _$YearBoxImpl>
    implements _$$YearBoxImplCopyWith<$Res> {
  __$$YearBoxImplCopyWithImpl(
      _$YearBoxImpl _value, $Res Function(_$YearBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of YearBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxNumber = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? boxStatus = null,
    Object? hasLandMark = null,
  }) {
    return _then(_$YearBoxImpl(
      boxNumber: null == boxNumber
          ? _value.boxNumber
          : boxNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      boxStatus: null == boxStatus
          ? _value.boxStatus
          : boxStatus // ignore: cast_nullable_to_non_nullable
              as BoxStatus,
      hasLandMark: null == hasLandMark
          ? _value.hasLandMark
          : hasLandMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YearBoxImpl extends _YearBox {
  _$YearBoxImpl(
      {required this.boxNumber,
      @EpochDateTimeConverter() required this.startDate,
      @EpochDateTimeConverter() required this.endDate,
      required this.boxStatus,
      this.hasLandMark = false})
      : super._();

  factory _$YearBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearBoxImplFromJson(json);

  @override
  final int boxNumber;
  @override
  @EpochDateTimeConverter()
  final DateTime startDate;
  @override
  @EpochDateTimeConverter()
  final DateTime endDate;
  @override
  final BoxStatus boxStatus;
  @override
  @JsonKey()
  final bool hasLandMark;

  @override
  String toString() {
    return 'YearBox(boxNumber: $boxNumber, startDate: $startDate, endDate: $endDate, boxStatus: $boxStatus, hasLandMark: $hasLandMark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearBoxImpl &&
            (identical(other.boxNumber, boxNumber) ||
                other.boxNumber == boxNumber) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.boxStatus, boxStatus) ||
                other.boxStatus == boxStatus) &&
            (identical(other.hasLandMark, hasLandMark) ||
                other.hasLandMark == hasLandMark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, boxNumber, startDate, endDate, boxStatus, hasLandMark);

  /// Create a copy of YearBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YearBoxImplCopyWith<_$YearBoxImpl> get copyWith =>
      __$$YearBoxImplCopyWithImpl<_$YearBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearBoxImplToJson(
      this,
    );
  }
}

abstract class _YearBox extends YearBox {
  factory _YearBox(
      {required final int boxNumber,
      @EpochDateTimeConverter() required final DateTime startDate,
      @EpochDateTimeConverter() required final DateTime endDate,
      required final BoxStatus boxStatus,
      final bool hasLandMark}) = _$YearBoxImpl;
  _YearBox._() : super._();

  factory _YearBox.fromJson(Map<String, dynamic> json) = _$YearBoxImpl.fromJson;

  @override
  int get boxNumber;
  @override
  @EpochDateTimeConverter()
  DateTime get startDate;
  @override
  @EpochDateTimeConverter()
  DateTime get endDate;
  @override
  BoxStatus get boxStatus;
  @override
  bool get hasLandMark;

  /// Create a copy of YearBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YearBoxImplCopyWith<_$YearBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
