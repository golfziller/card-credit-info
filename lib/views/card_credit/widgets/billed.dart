import 'package:dotted_line/dotted_line.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/card_info_cubit.dart';
import 'package:list_news/cubits/news/card_info_state.dart';
import 'package:list_news/theme/colors.dart';
import 'package:list_news/views/card_credit/widgets/list_title_statement.dart';
import 'package:list_news/views/card_credit/widgets/not_found.dart';

class Billed extends StatelessWidget {
  const Billed({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardInfoCubit, CardInfoState>(
      builder: (context, state) {
        final count = state.cardInfoSelected?.billedStatement?.length ?? 0;
        return Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'STATEMENT OF',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        value: state.periodSelected,
                        items: state.optionPeriod
                            .map((item) => DropdownMenuItem<String>(
                                  value: item.value,
                                  child: Text(item.label,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ))
                            .toList(),
                        onChanged: (value) {
                          Modular.get<CardInfoCubit>().onPeriodChange(value);
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 24,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.only(left: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: DottedLine(
                  dashColor: Colors.grey,
                  dashGapLength: 7,
                  lineThickness: 2,
                ),
              ),
              Expanded(
                child: state.isLoadingBilled
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : count == 0
                        ? const NotFound()
                        : ListView.builder(
                            itemCount: count,
                            itemBuilder: ((context, index) {
                              final item = state
                                  .cardInfoSelected!.billedStatement![index];
                              return Column(
                                children: [
                                  ListTitleStatement(item: item),
                                  const Divider()
                                ],
                              );
                            }),
                          ),
              )
            ],
          ),
        );
      },
    );
  }
}
