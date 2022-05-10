import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/features/base/data/models/coin/coin_model.dart';
import 'package:tf_custom_widgets/widgets/CachedImage.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

class BuildCoinItem extends StatelessWidget {
  final CoinModel model;

  const BuildCoinItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      child: Row(
        children: [
          CachedImage(
            url: model.image,
            height: 40,
            width: 40,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  title: model.name,
                  fontWeight: FontWeight.bold,
                  letterSpace: 1.1,
                  color: MyColors.black,
                  size: 12,
                ),
                const SizedBox(
                  height: 5,
                ),
                MyText(
                    title: model.symbol,
                    color: MyColors.blackOpacity,
                    size: 10),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MyText(
                title: "${model.price.toStringAsFixed(4)} USD",
                color: MyColors.black,
                size: 10,
              ),
              const SizedBox(height: 5),
              MyText(
                title: "${model.percentage.toStringAsFixed(2)} %",
                color: model.percentage > 0
                    ? MyColors.greenColor
                    : MyColors.errorColor,
                size: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
