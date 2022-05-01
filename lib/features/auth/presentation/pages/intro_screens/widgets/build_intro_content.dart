part of 'intro_screens_widgets_imports.dart';

class BuildIntroContent extends StatelessWidget {
  final String title;
  final String subTitle;

  const BuildIntroContent({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          MyText(
            title: title,
            color: MyColors.primary,
            size: 20,
            alien: TextAlign.center,
          ),
          const SizedBox(height: 10),
          MyText(
            title: subTitle,
            color: Colors.black,
            size: 12,
            wordSpace: 1.2,
            alien: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
