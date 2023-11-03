import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:list_news/theme/colors.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Data not found',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.kGraySmoke),
      ),
    );
  }
}
