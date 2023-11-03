// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_info_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardInfoStateImpl _$$CardInfoStateImplFromJson(Map<String, dynamic> json) =>
    _$CardInfoStateImpl(
      listCardInfo: (json['listCardInfo'] as List<dynamic>?)
          ?.map((e) => CardData.fromJson(e as Map<String, dynamic>))
          .toList(),
      indexCurrentTab: json['indexCurrentTab'] as int? ?? 0,
      cardInfoSelected: json['cardInfoSelected'] == null
          ? null
          : CardData.fromJson(json['cardInfoSelected'] as Map<String, dynamic>),
      optionPeriod: (json['optionPeriod'] as List<dynamic>?)
              ?.map((e) => DdlData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      periodSelected: json['periodSelected'] as String?,
      isLoadingBilled: json['isLoadingBilled'] as bool? ?? false,
    );

Map<String, dynamic> _$$CardInfoStateImplToJson(_$CardInfoStateImpl instance) =>
    <String, dynamic>{
      'listCardInfo': instance.listCardInfo,
      'indexCurrentTab': instance.indexCurrentTab,
      'cardInfoSelected': instance.cardInfoSelected,
      'optionPeriod': instance.optionPeriod,
      'periodSelected': instance.periodSelected,
      'isLoadingBilled': instance.isLoadingBilled,
    };

_$CardDataImpl _$$CardDataImplFromJson(Map<String, dynamic> json) =>
    _$CardDataImpl(
      card: CardCredit.fromJson(json['card'] as Map<String, dynamic>),
      unBilledStatement: (json['unBilledStatement'] as List<dynamic>?)
          ?.map((e) => Statements.fromJson(e as Map<String, dynamic>))
          .toList(),
      billedStatement: (json['billedStatement'] as List<dynamic>?)
          ?.map((e) => Statements.fromJson(e as Map<String, dynamic>))
          .toList(),
      periodSelected: json['periodSelected'] as String?,
    );

Map<String, dynamic> _$$CardDataImplToJson(_$CardDataImpl instance) =>
    <String, dynamic>{
      'card': instance.card,
      'unBilledStatement': instance.unBilledStatement,
      'billedStatement': instance.billedStatement,
      'periodSelected': instance.periodSelected,
    };

_$DdlDataImpl _$$DdlDataImplFromJson(Map<String, dynamic> json) =>
    _$DdlDataImpl(
      label: json['label'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$DdlDataImplToJson(_$DdlDataImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'value': instance.value,
    };
