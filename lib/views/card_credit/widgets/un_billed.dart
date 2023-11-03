import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:list_news/cubits/news/card_info_cubit.dart';
import 'package:list_news/cubits/news/card_info_state.dart';
import 'package:list_news/theme/colors.dart';
import 'package:list_news/utils/index.dart';
import 'package:list_news/views/card_credit/widgets/list_title_statement.dart';
import 'package:list_news/views/card_credit/widgets/not_found.dart';

class UnBilled extends StatelessWidget {
  const UnBilled({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardInfoCubit, CardInfoState>(
      builder: (context, state) {
        final count = state.cardInfoSelected?.unBilledStatement?.length ?? 0;
        return Expanded(
          child: state.cardInfoSelected?.unBilledStatement == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : count == 0
                  ? const NotFound()
                  : ListView.builder(
                      itemCount: count,
                      itemBuilder: ((context, index) {
                        final item =
                            state.cardInfoSelected!.unBilledStatement![index];
                        return Column(
                          children: [
                            ListTitleStatement(item: item),
                            const Divider()
                          ],
                        );
                      }),
                    ),
        );
      },
    );
  }
}
