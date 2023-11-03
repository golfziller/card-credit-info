import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/components/screen_wrapper.dart';
import 'package:list_news/cubits/news/card_info_cubit.dart';
import 'package:list_news/cubits/news/card_info_state.dart';
import 'package:list_news/theme/colors.dart';
import 'package:list_news/views/card_credit/widgets/account_info.dart';
import 'package:list_news/views/card_credit/widgets/billed.dart';
import 'package:list_news/views/card_credit/widgets/slide_card.dart';
import 'package:list_news/views/card_credit/widgets/un_billed.dart';

class CardInfo extends StatefulWidget {
  const CardInfo({super.key});

  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    Modular.get<CardInfoCubit>().setItemDropDownPeriod();
    Modular.get<CardInfoCubit>().fetchCards();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SlideCards(),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    onTap: (int index) {
                      Modular.get<CardInfoCubit>().onTabChange(index);
                    },
                    labelPadding: EdgeInsets.zero,
                    labelColor: AppColors.kBlackBy,
                    indicatorColor: AppColors.kBlackBy,
                    tabs: const [
                      Tab(
                        text: 'ACCOUNT INFO',
                      ),
                      Tab(
                        text: 'UNBILLED',
                      ),
                      Tab(
                        text: 'BILLED',
                      ),
                    ],
                  ),
                  BlocBuilder<CardInfoCubit, CardInfoState>(
                    builder: (context, state) {
                      if (state.indexCurrentTab == 0) {
                        return const AccountInfo();
                      } else if (state.indexCurrentTab == 1) {
                        return const UnBilled();
                      } else if (state.indexCurrentTab == 2) {
                        return const Billed();
                      } else {
                        return Container();
                      }
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
