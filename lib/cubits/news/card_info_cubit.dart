import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:list_news/cubits/news/card_info_state.dart';
import 'package:list_news/repository/billed_statement_repo.dart';
import 'package:list_news/repository/card_credit_repo.dart';
import 'package:list_news/repository/unbilled_statement_repo.dart';

class CardInfoCubit extends Cubit<CardInfoState> {
  CardInfoCubit() : super(CardInfoState());

  fetchCards() async {
    final res = await Modular.get<CardCreditRepository>()
        .getCardByCitizenId('1111111111111');
    if (res != null) {
      final listCardInfo = res.cards.map((e) {
        return CardData(card: e);
      }).toList();
      if (listCardInfo.isNotEmpty) {
        final itemFirst = listCardInfo.first;
        emit(state.copyWith(cardInfoSelected: itemFirst));
      }
      emit(state.copyWith(listCardInfo: listCardInfo));
    }
  }

  onTabChange(int index) {
    emit(state.copyWith(indexCurrentTab: index));

    checkUnBilledOrFetch();
    checkBilled();
  }

  checkUnBilledOrFetch() async {
    if (state.cardInfoSelected?.unBilledStatement == null &&
        state.cardInfoSelected != null &&
        state.listCardInfo != null &&
        state.indexCurrentTab == 1) {
      final res = await Modular.get<UnBilledStatementRepository>()
          .getUnBilledStatement(state.cardInfoSelected!.card.cardNumber);
      final findIndex = state.listCardInfo!.indexWhere((element) =>
          element.card.cardNumber == state.cardInfoSelected!.card.cardNumber);
      if (findIndex != -1) {
        final list = [...state.listCardInfo!];
        list[findIndex] = list[findIndex].copyWith(unBilledStatement: res);
        emit(state.copyWith(
            listCardInfo: list, cardInfoSelected: list[findIndex]));
      }
    }
  }

  checkBilled({bool manualFetch = false}) async {
    if ((state.cardInfoSelected?.billedStatement == null ||
            manualFetch ||
            state.periodSelected != state.cardInfoSelected?.periodSelected) &&
        state.cardInfoSelected != null &&
        state.listCardInfo != null &&
        state.indexCurrentTab == 2 &&
        state.periodSelected != null) {
      emit(state.copyWith(isLoadingBilled: true));
      final res = await Modular.get<BilledStatementRepository>()
          .getBilledStatement(
              state.cardInfoSelected!.card.cardNumber, state.periodSelected!);
      final findIndex = state.listCardInfo!.indexWhere((element) =>
          element.card.cardNumber == state.cardInfoSelected!.card.cardNumber);
      if (findIndex != -1) {
        final list = [...state.listCardInfo!];
        list[findIndex] = list[findIndex].copyWith(
            billedStatement: res, periodSelected: state.periodSelected);
        emit(state.copyWith(
          isLoadingBilled: false,
          listCardInfo: list,
          cardInfoSelected: list[findIndex],
        ));
      }
    }
  }

  onCardSlideChange(int index) {
    final item = state.listCardInfo![index];
    emit(state.copyWith(cardInfoSelected: item));
    checkUnBilledOrFetch();

    checkBilled();
  }

  setItemDropDownPeriod() {
    late List<DdlData> result = [];
    emit(state.copyWith(
        periodSelected: DateFormat('MMyyyy').format(Jiffy.now().dateTime)));
    for (var i = 0; i < 7; i++) {
      final date = Jiffy.now().add(months: -i);
      result.add(DdlData(
          label: DateFormat('MMM yyyy').format(date.dateTime),
          value: DateFormat('MMyyyy').format(date.dateTime)));
    }
    emit(state.copyWith(optionPeriod: result));
  }

  onPeriodChange(String? value) {
    emit(state.copyWith(periodSelected: value));
    checkBilled(manualFetch: true);
  }
}
