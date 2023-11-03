// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardInfoState _$CardInfoStateFromJson(Map<String, dynamic> json) {
  return _CardInfoState.fromJson(json);
}

/// @nodoc
mixin _$CardInfoState {
  List<CardData>? get listCardInfo => throw _privateConstructorUsedError;
  int get indexCurrentTab => throw _privateConstructorUsedError;
  CardData? get cardInfoSelected => throw _privateConstructorUsedError;
  List<DdlData> get optionPeriod => throw _privateConstructorUsedError;
  String? get periodSelected => throw _privateConstructorUsedError;
  bool get isLoadingBilled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardInfoStateCopyWith<CardInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInfoStateCopyWith<$Res> {
  factory $CardInfoStateCopyWith(
          CardInfoState value, $Res Function(CardInfoState) then) =
      _$CardInfoStateCopyWithImpl<$Res, CardInfoState>;
  @useResult
  $Res call(
      {List<CardData>? listCardInfo,
      int indexCurrentTab,
      CardData? cardInfoSelected,
      List<DdlData> optionPeriod,
      String? periodSelected,
      bool isLoadingBilled});

  $CardDataCopyWith<$Res>? get cardInfoSelected;
}

/// @nodoc
class _$CardInfoStateCopyWithImpl<$Res, $Val extends CardInfoState>
    implements $CardInfoStateCopyWith<$Res> {
  _$CardInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCardInfo = freezed,
    Object? indexCurrentTab = null,
    Object? cardInfoSelected = freezed,
    Object? optionPeriod = null,
    Object? periodSelected = freezed,
    Object? isLoadingBilled = null,
  }) {
    return _then(_value.copyWith(
      listCardInfo: freezed == listCardInfo
          ? _value.listCardInfo
          : listCardInfo // ignore: cast_nullable_to_non_nullable
              as List<CardData>?,
      indexCurrentTab: null == indexCurrentTab
          ? _value.indexCurrentTab
          : indexCurrentTab // ignore: cast_nullable_to_non_nullable
              as int,
      cardInfoSelected: freezed == cardInfoSelected
          ? _value.cardInfoSelected
          : cardInfoSelected // ignore: cast_nullable_to_non_nullable
              as CardData?,
      optionPeriod: null == optionPeriod
          ? _value.optionPeriod
          : optionPeriod // ignore: cast_nullable_to_non_nullable
              as List<DdlData>,
      periodSelected: freezed == periodSelected
          ? _value.periodSelected
          : periodSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoadingBilled: null == isLoadingBilled
          ? _value.isLoadingBilled
          : isLoadingBilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardDataCopyWith<$Res>? get cardInfoSelected {
    if (_value.cardInfoSelected == null) {
      return null;
    }

    return $CardDataCopyWith<$Res>(_value.cardInfoSelected!, (value) {
      return _then(_value.copyWith(cardInfoSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardInfoStateImplCopyWith<$Res>
    implements $CardInfoStateCopyWith<$Res> {
  factory _$$CardInfoStateImplCopyWith(
          _$CardInfoStateImpl value, $Res Function(_$CardInfoStateImpl) then) =
      __$$CardInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CardData>? listCardInfo,
      int indexCurrentTab,
      CardData? cardInfoSelected,
      List<DdlData> optionPeriod,
      String? periodSelected,
      bool isLoadingBilled});

  @override
  $CardDataCopyWith<$Res>? get cardInfoSelected;
}

/// @nodoc
class __$$CardInfoStateImplCopyWithImpl<$Res>
    extends _$CardInfoStateCopyWithImpl<$Res, _$CardInfoStateImpl>
    implements _$$CardInfoStateImplCopyWith<$Res> {
  __$$CardInfoStateImplCopyWithImpl(
      _$CardInfoStateImpl _value, $Res Function(_$CardInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCardInfo = freezed,
    Object? indexCurrentTab = null,
    Object? cardInfoSelected = freezed,
    Object? optionPeriod = null,
    Object? periodSelected = freezed,
    Object? isLoadingBilled = null,
  }) {
    return _then(_$CardInfoStateImpl(
      listCardInfo: freezed == listCardInfo
          ? _value._listCardInfo
          : listCardInfo // ignore: cast_nullable_to_non_nullable
              as List<CardData>?,
      indexCurrentTab: null == indexCurrentTab
          ? _value.indexCurrentTab
          : indexCurrentTab // ignore: cast_nullable_to_non_nullable
              as int,
      cardInfoSelected: freezed == cardInfoSelected
          ? _value.cardInfoSelected
          : cardInfoSelected // ignore: cast_nullable_to_non_nullable
              as CardData?,
      optionPeriod: null == optionPeriod
          ? _value._optionPeriod
          : optionPeriod // ignore: cast_nullable_to_non_nullable
              as List<DdlData>,
      periodSelected: freezed == periodSelected
          ? _value.periodSelected
          : periodSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoadingBilled: null == isLoadingBilled
          ? _value.isLoadingBilled
          : isLoadingBilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardInfoStateImpl implements _CardInfoState {
  const _$CardInfoStateImpl(
      {final List<CardData>? listCardInfo,
      this.indexCurrentTab = 0,
      this.cardInfoSelected,
      final List<DdlData> optionPeriod = const [],
      this.periodSelected,
      this.isLoadingBilled = false})
      : _listCardInfo = listCardInfo,
        _optionPeriod = optionPeriod;

  factory _$CardInfoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardInfoStateImplFromJson(json);

  final List<CardData>? _listCardInfo;
  @override
  List<CardData>? get listCardInfo {
    final value = _listCardInfo;
    if (value == null) return null;
    if (_listCardInfo is EqualUnmodifiableListView) return _listCardInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int indexCurrentTab;
  @override
  final CardData? cardInfoSelected;
  final List<DdlData> _optionPeriod;
  @override
  @JsonKey()
  List<DdlData> get optionPeriod {
    if (_optionPeriod is EqualUnmodifiableListView) return _optionPeriod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionPeriod);
  }

  @override
  final String? periodSelected;
  @override
  @JsonKey()
  final bool isLoadingBilled;

  @override
  String toString() {
    return 'CardInfoState(listCardInfo: $listCardInfo, indexCurrentTab: $indexCurrentTab, cardInfoSelected: $cardInfoSelected, optionPeriod: $optionPeriod, periodSelected: $periodSelected, isLoadingBilled: $isLoadingBilled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardInfoStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listCardInfo, _listCardInfo) &&
            (identical(other.indexCurrentTab, indexCurrentTab) ||
                other.indexCurrentTab == indexCurrentTab) &&
            (identical(other.cardInfoSelected, cardInfoSelected) ||
                other.cardInfoSelected == cardInfoSelected) &&
            const DeepCollectionEquality()
                .equals(other._optionPeriod, _optionPeriod) &&
            (identical(other.periodSelected, periodSelected) ||
                other.periodSelected == periodSelected) &&
            (identical(other.isLoadingBilled, isLoadingBilled) ||
                other.isLoadingBilled == isLoadingBilled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listCardInfo),
      indexCurrentTab,
      cardInfoSelected,
      const DeepCollectionEquality().hash(_optionPeriod),
      periodSelected,
      isLoadingBilled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardInfoStateImplCopyWith<_$CardInfoStateImpl> get copyWith =>
      __$$CardInfoStateImplCopyWithImpl<_$CardInfoStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardInfoStateImplToJson(
      this,
    );
  }
}

abstract class _CardInfoState implements CardInfoState {
  const factory _CardInfoState(
      {final List<CardData>? listCardInfo,
      final int indexCurrentTab,
      final CardData? cardInfoSelected,
      final List<DdlData> optionPeriod,
      final String? periodSelected,
      final bool isLoadingBilled}) = _$CardInfoStateImpl;

  factory _CardInfoState.fromJson(Map<String, dynamic> json) =
      _$CardInfoStateImpl.fromJson;

  @override
  List<CardData>? get listCardInfo;
  @override
  int get indexCurrentTab;
  @override
  CardData? get cardInfoSelected;
  @override
  List<DdlData> get optionPeriod;
  @override
  String? get periodSelected;
  @override
  bool get isLoadingBilled;
  @override
  @JsonKey(ignore: true)
  _$$CardInfoStateImplCopyWith<_$CardInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardData _$CardDataFromJson(Map<String, dynamic> json) {
  return _CardData.fromJson(json);
}

/// @nodoc
mixin _$CardData {
  CardCredit get card => throw _privateConstructorUsedError;
  List<Statements>? get unBilledStatement => throw _privateConstructorUsedError;
  List<Statements>? get billedStatement => throw _privateConstructorUsedError;
  String? get periodSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardDataCopyWith<CardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDataCopyWith<$Res> {
  factory $CardDataCopyWith(CardData value, $Res Function(CardData) then) =
      _$CardDataCopyWithImpl<$Res, CardData>;
  @useResult
  $Res call(
      {CardCredit card,
      List<Statements>? unBilledStatement,
      List<Statements>? billedStatement,
      String? periodSelected});
}

/// @nodoc
class _$CardDataCopyWithImpl<$Res, $Val extends CardData>
    implements $CardDataCopyWith<$Res> {
  _$CardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? unBilledStatement = freezed,
    Object? billedStatement = freezed,
    Object? periodSelected = freezed,
  }) {
    return _then(_value.copyWith(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardCredit,
      unBilledStatement: freezed == unBilledStatement
          ? _value.unBilledStatement
          : unBilledStatement // ignore: cast_nullable_to_non_nullable
              as List<Statements>?,
      billedStatement: freezed == billedStatement
          ? _value.billedStatement
          : billedStatement // ignore: cast_nullable_to_non_nullable
              as List<Statements>?,
      periodSelected: freezed == periodSelected
          ? _value.periodSelected
          : periodSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardDataImplCopyWith<$Res>
    implements $CardDataCopyWith<$Res> {
  factory _$$CardDataImplCopyWith(
          _$CardDataImpl value, $Res Function(_$CardDataImpl) then) =
      __$$CardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CardCredit card,
      List<Statements>? unBilledStatement,
      List<Statements>? billedStatement,
      String? periodSelected});
}

/// @nodoc
class __$$CardDataImplCopyWithImpl<$Res>
    extends _$CardDataCopyWithImpl<$Res, _$CardDataImpl>
    implements _$$CardDataImplCopyWith<$Res> {
  __$$CardDataImplCopyWithImpl(
      _$CardDataImpl _value, $Res Function(_$CardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = null,
    Object? unBilledStatement = freezed,
    Object? billedStatement = freezed,
    Object? periodSelected = freezed,
  }) {
    return _then(_$CardDataImpl(
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardCredit,
      unBilledStatement: freezed == unBilledStatement
          ? _value._unBilledStatement
          : unBilledStatement // ignore: cast_nullable_to_non_nullable
              as List<Statements>?,
      billedStatement: freezed == billedStatement
          ? _value._billedStatement
          : billedStatement // ignore: cast_nullable_to_non_nullable
              as List<Statements>?,
      periodSelected: freezed == periodSelected
          ? _value.periodSelected
          : periodSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardDataImpl implements _CardData {
  const _$CardDataImpl(
      {required this.card,
      final List<Statements>? unBilledStatement,
      final List<Statements>? billedStatement,
      this.periodSelected})
      : _unBilledStatement = unBilledStatement,
        _billedStatement = billedStatement;

  factory _$CardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardDataImplFromJson(json);

  @override
  final CardCredit card;
  final List<Statements>? _unBilledStatement;
  @override
  List<Statements>? get unBilledStatement {
    final value = _unBilledStatement;
    if (value == null) return null;
    if (_unBilledStatement is EqualUnmodifiableListView)
      return _unBilledStatement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Statements>? _billedStatement;
  @override
  List<Statements>? get billedStatement {
    final value = _billedStatement;
    if (value == null) return null;
    if (_billedStatement is EqualUnmodifiableListView) return _billedStatement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? periodSelected;

  @override
  String toString() {
    return 'CardData(card: $card, unBilledStatement: $unBilledStatement, billedStatement: $billedStatement, periodSelected: $periodSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardDataImpl &&
            (identical(other.card, card) || other.card == card) &&
            const DeepCollectionEquality()
                .equals(other._unBilledStatement, _unBilledStatement) &&
            const DeepCollectionEquality()
                .equals(other._billedStatement, _billedStatement) &&
            (identical(other.periodSelected, periodSelected) ||
                other.periodSelected == periodSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      card,
      const DeepCollectionEquality().hash(_unBilledStatement),
      const DeepCollectionEquality().hash(_billedStatement),
      periodSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardDataImplCopyWith<_$CardDataImpl> get copyWith =>
      __$$CardDataImplCopyWithImpl<_$CardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardDataImplToJson(
      this,
    );
  }
}

abstract class _CardData implements CardData {
  const factory _CardData(
      {required final CardCredit card,
      final List<Statements>? unBilledStatement,
      final List<Statements>? billedStatement,
      final String? periodSelected}) = _$CardDataImpl;

  factory _CardData.fromJson(Map<String, dynamic> json) =
      _$CardDataImpl.fromJson;

  @override
  CardCredit get card;
  @override
  List<Statements>? get unBilledStatement;
  @override
  List<Statements>? get billedStatement;
  @override
  String? get periodSelected;
  @override
  @JsonKey(ignore: true)
  _$$CardDataImplCopyWith<_$CardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DdlData _$DdlDataFromJson(Map<String, dynamic> json) {
  return _DdlData.fromJson(json);
}

/// @nodoc
mixin _$DdlData {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DdlDataCopyWith<DdlData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DdlDataCopyWith<$Res> {
  factory $DdlDataCopyWith(DdlData value, $Res Function(DdlData) then) =
      _$DdlDataCopyWithImpl<$Res, DdlData>;
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class _$DdlDataCopyWithImpl<$Res, $Val extends DdlData>
    implements $DdlDataCopyWith<$Res> {
  _$DdlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DdlDataImplCopyWith<$Res> implements $DdlDataCopyWith<$Res> {
  factory _$$DdlDataImplCopyWith(
          _$DdlDataImpl value, $Res Function(_$DdlDataImpl) then) =
      __$$DdlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value});
}

/// @nodoc
class __$$DdlDataImplCopyWithImpl<$Res>
    extends _$DdlDataCopyWithImpl<$Res, _$DdlDataImpl>
    implements _$$DdlDataImplCopyWith<$Res> {
  __$$DdlDataImplCopyWithImpl(
      _$DdlDataImpl _value, $Res Function(_$DdlDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$DdlDataImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DdlDataImpl implements _DdlData {
  const _$DdlDataImpl({required this.label, required this.value});

  factory _$DdlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DdlDataImplFromJson(json);

  @override
  final String label;
  @override
  final String value;

  @override
  String toString() {
    return 'DdlData(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DdlDataImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DdlDataImplCopyWith<_$DdlDataImpl> get copyWith =>
      __$$DdlDataImplCopyWithImpl<_$DdlDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DdlDataImplToJson(
      this,
    );
  }
}

abstract class _DdlData implements DdlData {
  const factory _DdlData(
      {required final String label,
      required final String value}) = _$DdlDataImpl;

  factory _DdlData.fromJson(Map<String, dynamic> json) = _$DdlDataImpl.fromJson;

  @override
  String get label;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$DdlDataImplCopyWith<_$DdlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
