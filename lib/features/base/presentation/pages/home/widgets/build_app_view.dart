import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/helper_methods.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/features/base/data/models/dapp/app_model.dart';
import 'package:tf_custom_widgets/widgets/CachedImage.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

class BuildAppView extends StatelessWidget {
  final AppModel model;

  const BuildAppView({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> HelperMethods.instance.launchURL(url: model.deepLink),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            CachedImage(
              url: model.logo,
              width: 80,
              height: 80,
            ),
            SizedBox(width: 6),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    title: model.name,
                    color: MyColors.black,
                    size: 12,
                  ),
                  SizedBox(height: 5),
                  Wrap(
                    spacing: 10,
                    children: List.generate(model.protocols.length, (index) {
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: MyColors.greyWhite,
                        ),
                        child: MyText(
                          title: model.protocols[index],
                          color: MyColors.blackOpacity,
                          size: 10,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 5),
                  MyText(
                    title: "Users: ${model.statistic.userActivity}",
                    color: MyColors.black,
                    size: 12,
                  ),
                  SizedBox(height: 5),
                  MyText(
                    title: "Balance: ${model.statistic.balance.toStringAsFixed(2)} ${model.statistic.currencyName}",
                    color: MyColors.black,
                    size: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
