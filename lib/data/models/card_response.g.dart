// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardsResponse _$CardsResponseFromJson(Map<String, dynamic> json) =>
    CardsResponse(
      citizenId: json['citizenId'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardCredit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CardsResponseToJson(CardsResponse instance) =>
    <String, dynamic>{
      'citizenId': instance.citizenId,
      'cards': instance.cards,
    };

CardCredit _$CardCreditFromJson(Map<String, dynamic> json) => CardCredit(
      cardName: json['cardName'] as String,
      cardHolderName: json['cardHolderName'] as String,
      cardNumber: json['cardNumber'] as String,
      cardImageUrl: json['cardImageUrl'] as String,
      creditLimit: (json['creditLimit'] as num).toDouble(),
      availableCredit: (json['availableCredit'] as num).toDouble(),
      minPay: (json['minPay'] as num).toDouble(),
      fullPay: (json['fullPay'] as num).toDouble(),
      statementDate: DateTime.parse(json['statementDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$CardCreditToJson(CardCredit instance) =>
    <String, dynamic>{
      'cardName': instance.cardName,
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'cardImageUrl': instance.cardImageUrl,
      'creditLimit': instance.creditLimit,
      'availableCredit': instance.availableCredit,
      'minPay': instance.minPay,
      'fullPay': instance.fullPay,
      'statementDate': instance.statementDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
    };

Statements _$StatementsFromJson(Map<String, dynamic> json) => Statements(
      description: json['description'] as String,
      statementDate: DateTime.parse(json['statementDate'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$StatementsToJson(Statements instance) =>
    <String, dynamic>{
      'description': instance.description,
      'statementDate': instance.statementDate.toIso8601String(),
      'amount': instance.amount,
    };
