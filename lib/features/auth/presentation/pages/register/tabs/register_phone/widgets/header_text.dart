part of'register_phone_widgets_imports.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: MyText(title: "Let's setup your account", color: MyColors.black, size: 18),
    );
  }
}
