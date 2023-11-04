import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:list_news/data/models/card_response.dart';

part 'card_info_state.freezed.dart';
part 'card_info_state.g.dart';

@freezed
class CardInfoState with _$CardInfoState {
  const factory CardInfoState({
    List<CardData>? listCardInfo,
    @Default(0) int indexCurrentTab,
    CardData? cardInfoSelected,
    @Default([]) List<DdlData> optionPeriod,
    String? periodSelected,
    @Default(false) bool isLoadingBilled,
  }) = _CardInfoState;

  factory CardInfoState.fromJson(Map<String, Object?> json) =>
      _$CardInfoStateFromJson(json);
}

@freezed
class CardData with _$CardData {
  const factory CardData({
    required CardCredit card,
    List<Statements>? unBilledStatement,
    List<Statements>? billedStatement,
    String? periodSelected,
  }) = _CardData;

  factory CardData.fromJson(Map<String, dynamic> json) =>
      _$CardDataFromJson(json);
}

@freezed
class DdlData with _$DdlData {
  const factory DdlData({
    required String label,
    required String value,
  }) = _DdlData;

  factory DdlData.fromJson(Map<String, dynamic> json) =>
      _$DdlDataFromJson(json);
}
