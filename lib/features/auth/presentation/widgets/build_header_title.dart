import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

class BuildHeaderTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const BuildHeaderTitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: title,
          color: MyColors.black,
          size: 22,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 40),
          child: MyText(
            title: subTitle,
            color: MyColors.blackOpacity,
            size: 16,
            letterSpace: 1.1,
          ),
        ),
      ],
    );
  }
}
