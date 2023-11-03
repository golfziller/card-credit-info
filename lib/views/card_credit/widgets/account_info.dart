import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:list_news/cubits/news/card_info_cubit.dart';
import 'package:list_news/cubits/news/card_info_state.dart';
import 'package:list_news/data/models/card_response.dart';
import 'package:list_news/utils/index.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardInfoCubit, CardInfoState>(
      builder: (context, state) {
        return state.cardInfoSelected == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'AVAILABLE CREDIT',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'CREDIT LIMIT',
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            formatCurrentCy(
                                state.cardInfoSelected!.card.availableCredit),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            formatCurrentCy(
                                state.cardInfoSelected!.card.creditLimit,
                                format: '#,##0'),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'MIN PAY',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'FULL PAY',
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            formatCurrentCy(
                                state.cardInfoSelected!.card.minPay),
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            formatCurrentCy(
                                state.cardInfoSelected!.card.fullPay),
                            style: Theme.of(context).textTheme.displayMedium,
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'STATEMENT DATE',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'DUE DATE',
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            DateFormat('dd MMM yyyy').format(
                                state.cardInfoSelected!.card.statementDate),
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            DateFormat('dd MMM yyyy')
                                .format(state.cardInfoSelected!.card.dueDate),
                            style: Theme.of(context).textTheme.displayMedium,
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
      },
    );
  }
}
