part of 'active_account_widgets_imports.dart';

class BuildHeaderTitle extends StatelessWidget {
  const BuildHeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: "Enter your security code",
          color: MyColors.black,
          size: 22,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 50),
          child: MyText(
            title: "In order for us to be able to reset your password, please enter your phone number below.",
            color: MyColors.blackOpacity,
            size: 18,
            letterSpace: 1.1,
          ),
        ),
      ],
    );
  }
}
