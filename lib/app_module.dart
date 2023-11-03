import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/card_info_cubit.dart';
import 'package:list_news/data/network/api_service.dart';
import 'package:list_news/repository/billed_statement_repo.dart';
import 'package:list_news/repository/card_credit_repo.dart';
import 'package:list_news/repository/unbilled_statement_repo.dart';
import 'package:list_news/routes/page_name.dart';
import 'package:list_news/views/card_credit/info.dart';

class AppModule extends Module {
  AppModule();

  @override
  void binds(i) {
    i.addSingleton(NetworkService.new);
    i.addLazySingleton(BilledStatementRepository.new);
    i.addLazySingleton(CardCreditRepository.new);
    i.addLazySingleton(UnBilledStatementRepository.new);
    i.addSingleton(CardInfoCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      PageName.cardInfo,
      child: (context) => BlocProvider(
        create: (context) => Modular.get<CardInfoCubit>(),
        child: CardInfo(),
      ),
    );
  }
}
