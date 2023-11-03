import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_response.g.dart';

@JsonSerializable()
class CardsResponse {
  final String citizenId;
  final List<CardCredit> cards;

  CardsResponse({
    required this.citizenId,
    required this.cards,
  });

  factory CardsResponse.fromJson(Map<String, dynamic> json) =>
      _$CardsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CardsResponseToJson(this);
}

@JsonSerializable()
class CardCredit {
  CardCredit({
    required this.cardName,
    required this.cardHolderName,
    required this.cardNumber,
    required this.cardImageUrl,
    required this.creditLimit,
    required this.availableCredit,
    required this.minPay,
    required this.fullPay,
    required this.statementDate,
    required this.dueDate,
  });

  final String cardName;
  final String cardHolderName;
  final String cardNumber;
  final String cardImageUrl;
  final double creditLimit;
  final double availableCredit;
  final double minPay;
  final double fullPay;
  final DateTime statementDate;
  final DateTime dueDate;

  factory CardCredit.fromJson(Map<String, dynamic> json) =>
      _$CardCreditFromJson(json);
  Map<String, dynamic> toJson() => _$CardCreditToJson(this);
}

@JsonSerializable()
class Statements {
  Statements({
    required this.description,
    required this.statementDate,
    required this.amount,
  });

  final String description;
  final DateTime statementDate;
  final double amount;

  factory Statements.fromJson(Map<String, dynamic> json) =>
      _$StatementsFromJson(json);
  Map<String, dynamic> toJson() => _$StatementsToJson(this);
}
