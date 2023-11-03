import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/card_info_cubit.dart';
import 'package:list_news/cubits/news/card_info_state.dart';
import 'package:list_news/theme/colors.dart';

class SlideCards extends StatelessWidget {
  const SlideCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardInfoCubit, CardInfoState>(
      builder: (context, state) {
        return state.listCardInfo == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    onPageChanged: (int index, reason) {
                      Modular.get<CardInfoCubit>().onCardSlideChange(index);
                    }),
                items: state.listCardInfo!.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(i.card.cardImageUrl),
                              fit: BoxFit.contain),
                        ),
                      );
                    },
                  );
                }).toList(),
              );
      },
    );
  }
}
