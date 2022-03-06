import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/res.dart';

class BuildAuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildAuthAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: AutoRouter.of(context).pop,
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
