import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/res.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

class BuildAuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function()? onBack;
  const BuildAuthAppBar({Key? key, this.title, this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title:title!=null? MyText(title:title??"", color: MyColors.black, size: 22,):null,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap:onBack?? AutoRouter.of(context).pop,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(Res.arrow),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65);
}
