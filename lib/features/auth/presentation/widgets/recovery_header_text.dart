import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../../../core/constants/my_colors.dart';

class RecoveryHeaderText extends StatelessWidget {
  final String title;
  final String subTitle;

  const RecoveryHeaderText(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: MyText(
            alien: TextAlign.center,
            title: title,
            letterSpace: 1.1,
            color: MyColors.black,
            size: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        MyText(
            alien: TextAlign.center,
            title: subTitle,
            color: MyColors.blackOpacity,
            letterSpace: 1.1,
            size: 10),
      ],
    );
  }
}
