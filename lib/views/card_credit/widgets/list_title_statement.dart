import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:list_news/data/models/card_response.dart';
import 'package:list_news/theme/colors.dart';
import 'package:list_news/utils/index.dart';

class ListTitleStatement extends StatelessWidget {
  const ListTitleStatement({super.key, required this.item});
  final Statements item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item.description,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        DateFormat('dd MMM').format(item.statementDate),
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.kGraySmoke),
      ),
      trailing: Text(
        formatCurrentCy(item.amount, format: '#,##0', suffix: 'THB'),
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
